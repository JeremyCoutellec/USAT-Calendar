import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:usat_calendar/data/db.dart';
import 'package:usat_calendar/shared/routes/router.gr.dart';

//ignore_for_file: public_member_api_docs
@RoutePage()
class BookListScreen extends StatefulWidget {
  const BookListScreen({super.key});

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen>
    with AutoRouteAwareStateMixin<BookListScreen> {
  @override
  void didPushNext() {
    print('didPushNext');
  }

  @override
  Widget build(BuildContext context) {
    var booksDb = BooksDBProvider.of(context);
    return Scaffold(
      body: ListView(children: [
        for (final book in [...?booksDb?.books])
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(book.name),
              subtitle: Text(book.genre),
              onTap: () {
                context.pushRoute(BookDetailsRoute(id: book.id));
              },
            ),
          ),
      ]),
    );
  }
}

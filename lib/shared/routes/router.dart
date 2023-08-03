//ignore_for_file: public_member_api_docs
import 'package:auto_route/auto_route.dart';
import 'package:usat_calendar/shared/routes/router.gr.dart';

@AutoRouterConfig(generateForDir: ['lib'])
class RootRouter extends $RootRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
      children: [
        RedirectRoute(path: '', redirectTo: 'books'),
        AutoRoute(
          path: 'books',
          page: BooksTab.page,
          maintainState: true,
          children: [
            AutoRoute(
              path: '',
              page: BookListRoute.page,
              title: (ctx, _) => 'Books list',
            ),
            AutoRoute(
              path: ':id',
              page: BookDetailsRoute.page,
              title: (ctx, data) {
                return 'Book Details ${data.pathParams.get('id')}';
              },
            ),
          ],
        ),
        AutoRoute(
          path: 'profile',
          page: ProfileTab.page,
          children: [
            AutoRoute(path: '', page: ProfileRoute.page),
            AutoRoute(path: 'my-books', page: MyBooksRoute.page),
          ],
        ),
        AutoRoute(
          path: 'settings/:tab',
          page: SettingsTab.page,
        ),
      ],
    ),
    AutoRoute(page: LoginRoute.page, path: '/login'),
    RedirectRoute(path: '*', redirectTo: '/'),
  ];
}

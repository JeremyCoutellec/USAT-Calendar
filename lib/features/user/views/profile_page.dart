import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:usat_calendar/features/user/data/user_data.dart';
import 'package:usat_calendar/home_page.dart';
import 'package:usat_calendar/shared/routes/router.gr.dart';

// ignore_for_file: public_member_api_docs
// ignore_for_file: library_private_types_in_public_api
@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  UserData? userData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile page',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                context.router.push(MyBooksRoute());
              },
              child: const Text('My Books'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                context
                    .findRootAncestorStateOfType<HomePageState>()
                    ?.toggleSettingsTap();
              },
              child: const Text('Toggle Settings Tab'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => context.back(),
              child: const Text('Navigate Back'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                context.navigateNamedTo('settings/tab1');
              },
              child: const Text('Navigate to settings/tab1'),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.replaceAll(
                  [
                    HomeRoute(
                      children: [
                        SettingsTab(tab: 'Replaced'),
                      ],
                    ),
                  ],
                  updateExistingRoutes: false,
                );
              },
              child: const Text('ReplaceAll'),
            ),
            const SizedBox(height: 32),
            userData == null
                ? ElevatedButton(
                    onPressed: () {
                      // context.pushRoute(
                      //   // UserDataCollectorRoute(onResult: (data) {
                      //   //   setState(() {
                      //   //     userData = data;
                      //   //   });
                      //   // }),
                      // );
                    },
                    child: const Text('Collect user data'),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Your Data is complete'),
                      const SizedBox(height: 24),
                      Text('Name: ${userData!.name}'),
                      const SizedBox(height: 24),
                      Text('Favorite book: ${userData!.favoriteBook}'),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

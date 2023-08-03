import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:usat_calendar/shared/routes/route_destination.dart';
import 'package:usat_calendar/shared/routes/router.gr.dart';

//ignore_for_file: public_member_api_docs
@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final destinations = [
    const RouteDestination(
      route: BooksTab(),
      icon: Icons.source,
      label: 'Books',
    ),
    const RouteDestination(
      route: ProfileTab(),
      icon: Icons.person,
      label: 'Profile',
    ),
    RouteDestination(
      route: SettingsTab(tab: 'tab'),
      icon: Icons.settings,
      label: 'Settings',
    ),
  ];

  void toggleSettingsTap() => setState(() {
        _showSettingsTap = !_showSettingsTap;
      });

  bool _showSettingsTap = true;

  @override
  Widget build(context) {
    // builder will rebuild everytime this router's stack
    // updates
    // we need it to indicate which NavigationRailDestination is active
    return kIsWeb
        ? AutoRouter(builder: (context, child) {
            // we check for active route index by using
            // router.isRouteActive method
            var activeIndex = destinations.indexWhere(
              (d) => context.router.isRouteActive(d.route.routeName),
            );
            // there might be no active route until router is mounted
            // so we play safe
            if (activeIndex == -1) {
              activeIndex = 0;
            }
            return Row(
              children: [
                NavigationRail(
                  destinations: destinations
                      .map((item) => NavigationRailDestination(
                            icon: Icon(item.icon),
                            label: Text(item.label),
                          ))
                      .toList(),
                  selectedIndex: activeIndex,
                  onDestinationSelected: (index) {
                    // use navigate instead of push so you won't have
                    // many useless route stacks
                    context.navigateTo(destinations[index].route);
                  },
                ),
                // child is the rendered route stack
                Expanded(child: child)
              ],
            );
          })
        : AutoTabsRouter(
            routes: [
              const BooksTab(),
              const ProfileTab(),
              if (_showSettingsTap) SettingsTab(tab: 'tab'),
            ],
            builder: (context, child) {
              return Scaffold(
                appBar: AppBar(
                  title: Text(context.topRoute.title(context)),
                  leading: const AutoLeadingButton(ignorePagelessRoutes: true),
                  // bottom: TabBar(
                  //   controller: controller,
                  //   tabs: [
                  //     for (final d in destinations)
                  //       Tab(
                  //         child: Text(d.label),
                  //       )
                  //   ],
                  // ),
                ),
                body: child,
                bottomNavigationBar:
                    buildBottomNav(context, context.tabsRouter),
              );
            },
          );
  }

  Widget buildBottomNav(BuildContext context, TabsRouter tabsRouter) {
    final hideBottomNav = tabsRouter.topMatch.meta['hideBottomNav'] == true;
    return hideBottomNav
        ? const SizedBox.shrink()
        : BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.source),
                label: 'Books',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
              if (_showSettingsTap)
                const BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Settings',
                ),
            ],
          );
  }
}

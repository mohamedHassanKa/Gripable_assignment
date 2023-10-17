import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grippable_reddit/components/home_screen_scaffold.dart';
import 'package:grippable_reddit/screens/HotListingsScreen/hot_listings_screen.dart';
import 'package:grippable_reddit/screens/LoginScreen/login_screen.dart';
import 'package:grippable_reddit/screens/NewListingScreen/new_listing_screen.dart';
import 'package:grippable_reddit/screens/RisingListingsScreen/rising_listing_screen.dart';

final GlobalKey<NavigatorState> _homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'home');

final appRoutes = [
  GoRoute(
    path: LoginScreen.routePath,
    name: LoginScreen.routePath,
    builder: (context, state) => const LoginScreen(),
  ),
  ShellRoute(
      navigatorKey: _homeNavigatorKey,
      builder: (BuildContext context, GoRouterState state, Widget child) {
        return HomeScreenScaffold(child: child);
      },
      routes: [
        GoRoute(
          path: HotListingsScreen.routePath,
          name: HotListingsScreen.routePath,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return routeTransition(state, const HotListingsScreen());
          },
        ),
        GoRoute(
            path: NewListingScreen.routePath,
            name: NewListingScreen.routePath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return routeTransition(state, const NewListingScreen());
            }),
        GoRoute(
            path: RisingListingScreen.routePath,
            name: RisingListingScreen.routePath,
            pageBuilder: (BuildContext context, GoRouterState state) {
              return routeTransition(state, const RisingListingScreen());
            }),
      ]),
];

CustomTransitionPage<dynamic> routeTransition(
    GoRouterState state, Widget page) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Change the opacity of the screen using a Curve based on the the animation's
      // value
      return FadeTransition(
        opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
        child: child,
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grippable_reddit/router/app_router.dart';
import 'package:grippable_reddit/screens/HotListingsScreen/hot_listings_screen.dart';
import 'package:grippable_reddit/screens/NewListingScreen/new_listing_screen.dart';
import 'package:grippable_reddit/screens/RisingListingsScreen/rising_listing_screen.dart';

class HomeScreenScaffold extends StatelessWidget {
  final Widget child;

  const HomeScreenScaffold({Key? key, required this.child}) : super(key: key);

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.toString();

    if ([HotListingsScreen.routePath].contains(location)) {
      return 0;
    }
    if ([NewListingScreen.routePath].contains(location)) {
      return 1;
    }
    if ([RisingListingScreen.routePath].contains(location)) {
      return 2;
    }
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        appRouter.go(HotListingsScreen.routePath);
        break;
      case 1:
        GoRouter.of(context).go(NewListingScreen.routePath);
        break;
      case 2:
        GoRouter.of(context).go(RisingListingScreen.routePath);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: child,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: SizedBox(), label: 'Hot'),
            BottomNavigationBarItem(icon: SizedBox(), label: 'New'),
            BottomNavigationBarItem(icon: SizedBox(), label: 'Rising'),
          ],
          currentIndex: _calculateSelectedIndex(context),
          onTap: (int idx) => _onItemTapped(idx, context),
        ));
  }
}

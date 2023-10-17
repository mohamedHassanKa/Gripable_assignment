import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grippable_reddit/router/routes.dart';
import 'package:grippable_reddit/screens/HotListingsScreen/hot_listings_screen.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final appRouter = GoRouter(
  initialLocation: HotListingsScreen.routePath,
  navigatorKey: rootNavigatorKey,
  routes: appRoutes,
);

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:grippable_reddit/router/routes.dart';
import 'package:grippable_reddit/screens/LoginScreen/login_screen.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final appRouter = GoRouter(
  initialLocation: LoginScreen.routePath,
  navigatorKey: rootNavigatorKey,
  routes: appRoutes,
);

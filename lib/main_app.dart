import 'package:flutter/material.dart';
import 'package:grippable_reddit/router/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Grippable Reddit',
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}

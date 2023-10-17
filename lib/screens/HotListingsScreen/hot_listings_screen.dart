import 'package:flutter/material.dart';
import 'package:grippable_reddit/core/providers/hotListingStore/hot_listing_store.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HotListingsScreen extends HookConsumerWidget {
  static const String routePath = '/hotlisting';

  const HotListingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotListings = ref.watch(hotListingStoreProvider);

    return Container();
  }
}

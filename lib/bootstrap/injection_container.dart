import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gripable_assignment/feed/domain/repository/feed_repository.dart';

class InjectionContainer extends StatelessWidget {
  const InjectionContainer({
    required this.feedRepository,
    required this.child,
    super.key,
  });

  final FeedRepository feedRepository;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    //inject here
    return MultiRepositoryProvider(
      providers: [RepositoryProvider.value(value: feedRepository)],
      child: child,
    );
  }
}

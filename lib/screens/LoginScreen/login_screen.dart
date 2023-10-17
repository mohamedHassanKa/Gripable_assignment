import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:grippable_reddit/core/providers/tokenStore/token_store.dart';
import 'package:grippable_reddit/utils/app_constants.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends ConsumerWidget {
  static const String routePath = '/login-screen';

  const LoginScreen({super.key});

  Future<void> _loginToReddit() async {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          FilledButton(
              onPressed: () {
                ref.read(tokenStoreProvider.notifier).getAccessToken();
              },
              child: Text("login to reddit"))
        ]),
      ),
    );
  }
}

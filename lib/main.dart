import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'main_app.dart';
import 'utils/state_logger.dart';

Future main() async {
  await dotenv.load(fileName: "environments/.env");

  runApp(const ProviderScope(
      observers: kDebugMode ? [StateLogger()] : null, child: MyApp()));
}

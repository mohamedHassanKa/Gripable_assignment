import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gripable_assignment/app/app.dart';

void main() {
  group('App', () {
    testWidgets('renders a PlaceHolder', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(Placeholder), findsOneWidget);
    });
  });
}

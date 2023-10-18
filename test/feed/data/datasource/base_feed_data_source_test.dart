import 'package:flutter_test/flutter_test.dart';
import 'package:gripable_assignment/feed/data/data.dart';

class TestFeedDataSource extends BaseFeedDataSource {
  TestFeedDataSource() : super();

  @override
  dynamic noSuchMethod(Invocation invocation) {
    return super.noSuchMethod(invocation);
  }
}

void main() {
  group('TestFeedDataSource', () {
    test('can be constructed', () {
      expect(TestFeedDataSource.new, returnsNormally);
    });
  });
}

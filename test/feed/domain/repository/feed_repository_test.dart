import 'package:flutter_test/flutter_test.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/feed/data/data.dart';
import 'package:gripable_assignment/feed/domain/domain.dart';
import 'package:mocktail/mocktail.dart';

class MockDataSource extends Mock implements BaseFeedDataSource {}

void main() {
  group('FeedRepository', () {
    late FeedRepository feedRepository;
    late MockDataSource mockDataSource;

    setUp(() {
      mockDataSource = MockDataSource();
      feedRepository = FeedRepository(dataSource: mockDataSource);
    });

    test('fetchPosts returns FeedData from the data source', () async {
      const subredditName = 'example';
      const sortType = SortType.newSort;
      const after = 'abc';

      final expectedData = FeedData(
        children: [
          Post(
            kind: 'post',
            data: PostData(
              title: 'Post 1',
              selfText: 'Content 1',
              url: 'http://example.com/post1',
            ),
          ),
          Post(
            kind: 'post',
            data: PostData(
              title: 'Post 2',
              selfText: 'Content 2',
              url: 'http://example.com/post2',
            ),
          ),
        ],
        after: after,
      );

      when(
        () => mockDataSource.fetchPosts(subredditName, sortType, after: after),
      ).thenAnswer((_) async => expectedData);

      final result = await feedRepository.fetchPosts(
        subredditName,
        sortType,
        after: after,
      );

      expect(result, expectedData);
    });
  });
}

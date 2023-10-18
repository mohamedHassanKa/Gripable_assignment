import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gripable_assignment/core/types/sort_type.dart';
import 'package:gripable_assignment/feed/data/datasource/remote_feed_data_source.dart';
import 'package:mocktail/mocktail.dart';

class MockDio extends Mock implements Dio {}

void main() {
  group('RemoteFeedDataSource', () {
    late RemoteFeedDataSource remoteFeedDataSource;
    late MockDio mockDio;

    setUp(() {
      mockDio = MockDio();
      remoteFeedDataSource = RemoteFeedDataSource(dio: mockDio);
    });

    test('fetchPosts returns a FeedData object', () async {
      const subredditName = 'example';
      const sortType = SortType.newSort;
      const after = 'abc';

      final expectedPath = 'r/$subredditName/${sortType.key}.json';
      final responseMap = {
        'data': {
          'children': [
            {
              'kind': 'post',
              'data': {
                'title': 'Post 1',
                'selftext': 'Content 1',
                'url': 'http://example.com/post1',
              },
            },
            {
              'kind': 'post',
              'data': {
                'title': 'Post 2',
                'selftext': 'Content 2',
                'url': 'http://example.com/post2',
              },
            },
          ],
          'after': after,
        },
      };

      final response = Response(
        data: responseMap,
        statusCode: 200,
        requestOptions: RequestOptions(path: expectedPath),
      );

      when(
        () => mockDio.get<Map<String, dynamic>>(
          expectedPath,
          queryParameters: {'after': after},
        ),
      ).thenAnswer((_) async => response);

      final feedData = await remoteFeedDataSource.fetchPosts(
        subredditName,
        sortType,
        after: after,
      );

      expect(feedData.children.length, 2);
      expect(feedData.after, after);
      expect(feedData.children[0].kind, 'post');
      expect(feedData.children[0].data.title, 'Post 1');
      expect(feedData.children[0].data.selfText, 'Content 1');
      expect(feedData.children[0].data.url, 'http://example.com/post1');
      expect(feedData.children[1].kind, 'post');
      expect(feedData.children[1].data.title, 'Post 2');
      expect(feedData.children[1].data.selfText, 'Content 2');
      expect(feedData.children[1].data.url, 'http://example.com/post2');
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:gripable_assignment/feed/data/data.dart';

void main() {
  group('FeedData', () {
    test('can be constructed', () {
      final posts = <Post>[];
      const after = 'abc';

      final feedData = FeedData(children: posts, after: after);

      expect(feedData.children, posts);
      expect(feedData.after, after);
    });

    test('can be created from JSON', () {
      final json = {
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
        'after': 'xyz',
      };

      final feedData = FeedData.fromJson(json);

      expect(feedData.children.length, 2);
      expect(feedData.children[0].kind, 'post');
      expect(feedData.children[0].data.title, 'Post 1');
      expect(feedData.children[0].data.selfText, 'Content 1');
      expect(feedData.children[0].data.url, 'http://example.com/post1');
      expect(feedData.children[1].kind, 'post');
      expect(feedData.children[1].data.title, 'Post 2');
      expect(feedData.children[1].data.selfText, 'Content 2');
      expect(feedData.children[1].data.url, 'http://example.com/post2');
      expect(feedData.after, 'xyz');
    });
  });

  group('Post', () {
    test('can be constructed', () {
      const kind = 'post';
      final postData = PostData(
        title: 'Sample Post',
        selfText: 'This is a sample post',
        url: 'http://example.com/post',
      );
      final post = Post(kind: kind, data: postData);

      expect(post.kind, kind);
      expect(post.data, postData);
    });

    test('can be created from JSON', () {
      final json = {
        'kind': 'post',
        'data': {
          'title': 'Sample Post',
          'selftext': 'This is a sample post',
          'url': 'http://example.com/post',
        },
      };

      final post = Post.fromJson(json);

      expect(post.kind, 'post');
      expect(post.data.title, 'Sample Post');
      expect(post.data.selfText, 'This is a sample post');
      expect(post.data.url, 'http://example.com/post');
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:gripable_assignment/feed/data/data.dart';

void main() {
  group('Post', () {
    test('can be constructed', () {
      const kind = 'post';
      final data = PostData(
        title: 'Sample Post',
        selfText: 'This is a sample post',
        url: 'http://example.com/post',
      );

      final post = Post(kind: kind, data: data);

      expect(post.kind, kind);
      expect(post.data, data);
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

  group('PostData', () {
    test('can be constructed', () {
      const title = 'Sample Post';
      const selfText = 'This is a sample post';
      const url = 'http://example.com/post';

      final postData = PostData(title: title, selfText: selfText, url: url);

      expect(postData.title, title);
      expect(postData.selfText, selfText);
      expect(postData.url, url);
    });

    test('can be created from JSON', () {
      final json = {
        'title': 'Sample Post',
        'selftext': 'This is a sample post',
        'url': 'http://example.com/post',
      };

      final postData = PostData.fromJson(json);

      expect(postData.title, 'Sample Post');
      expect(postData.selfText, 'This is a sample post');
      expect(postData.url, 'http://example.com/post');
    });
  });
}

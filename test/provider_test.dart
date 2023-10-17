import 'package:flutter_test/flutter_test.dart';
import 'package:grippable_reddit/core/models/listingModel/listing_model.dart';
import 'package:grippable_reddit/core/providers/hotListingStore/hot_listing_store.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/http_service_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'mocks/http_service_mock.dart';

void main() {
  test('can get hotlistings', () {
    final container = ProviderContainer(
      overrides: [
        httpServiceProvider.overrideWithValue(HttpServiceMock()),
      ],
    );

    final hotListings = container.read(hotListingStoreProvider);

    //check initial state is loading
    expect(
      hotListings,
      const AsyncValue<RedditListing?>.loading(),
    );
  });

  test('pagination testing for hotlistings', () async {
    final container = ProviderContainer(
      overrides: [
        httpServiceProvider.overrideWithValue(HttpServiceMock()),
      ],
    );

    final hotListings = await container.read(hotListingStoreProvider.future);

    expect(
      hotListings,
      isA<RedditListing>(),
    );
  });
}

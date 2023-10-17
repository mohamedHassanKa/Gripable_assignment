import 'package:grippable_reddit/core/models/listingModel/listing_model.dart';
import 'package:grippable_reddit/core/services/httpServiceProvider/api_response.dart';
import 'package:grippable_reddit/core/services/redditAPIService/reddit_api_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'new_listing_store.g.dart';

@Riverpod(keepAlive: true)
class NewListingStore extends _$NewListingStore {
  @override
  FutureOr<RedditListing?> build() async {
    final initalState = await getHotLists();

    return initalState;
  }

  Future getHotLists() async {
    state = const AsyncValue.loading();

    final redditApi = ref.read(redditApiServiceProvider);

    final response = await redditApi.getHotListings(
      after: state.value?.after,
    );

    if (response.kind == ApiResponseKind.ok) {
      final result = response.data['data'];
      var data = RedditListing.fromJson(result);

      final listItems = (result['children'] as List<dynamic>)
          .map(
            (e) => RedditListingItem.fromJson(e['data']),
          )
          .toList();

      data = data.copyWith(
        items: [...state.value?.items ?? [], ...listItems],
      );

      state = AsyncValue.data(data);

      return data;
    }
    return null;
  }
}

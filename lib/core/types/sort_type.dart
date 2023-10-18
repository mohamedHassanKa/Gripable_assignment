enum SortType { hotSort, newSort, risingSort }

extension SortTypeX on SortType {
  String get key {
    switch (this) {
      case SortType.hotSort:
        return 'hot';
      case SortType.newSort:
        return 'new';
      case SortType.risingSort:
        return 'rising';
    }
  }
}

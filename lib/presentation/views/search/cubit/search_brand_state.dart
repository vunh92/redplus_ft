part of 'search_brand_cubit.dart';

class SearchBrandState {
  final List<BrandModel> listBrand;
  final List<BrandModel> listBrandSearch;
  const SearchBrandState({
    this.listBrand = const [],
    this.listBrandSearch = const [],
  });

  SearchBrandState copyWith({
    List<BrandModel>? listBrand,
    List<BrandModel>? listBrandSearch,
  }) {
    return SearchBrandState(
      listBrand: listBrand ?? this.listBrand,
      listBrandSearch: listBrandSearch ?? this.listBrandSearch,
    );
  }
}

class SearchBrandLoading extends SearchBrandState {
  SearchBrandLoading({
    required super.listBrand,
    required super.listBrandSearch,
  });
}

class SearchBrandLoaded extends SearchBrandState {
  SearchBrandLoaded({required super.listBrand, required super.listBrandSearch});
}

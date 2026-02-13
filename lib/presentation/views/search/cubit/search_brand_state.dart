part of 'search_brand_cubit.dart';

class SearchBrandState {
  final List<BrandModel> listBrand;
  final List<DistrictModel> listDistrict;
  const SearchBrandState({
    this.listBrand = const [],
    this.listDistrict = const [],
  });

  SearchBrandState copyWith({
    List<BrandModel>? listBrand,
    List<DistrictModel>? listDistrict,
  }) {
    return SearchBrandState(
      listBrand: listBrand ?? this.listBrand,
      listDistrict: listDistrict ?? this.listDistrict,
    );
  }
}

class SearchBrandLoading extends SearchBrandState {
  SearchBrandLoading({
    required super.listBrand,
    required super.listDistrict,
  });
}

class SearchBrandLoaded extends SearchBrandState {
  SearchBrandLoaded({required super.listBrand, required super.listDistrict});
}

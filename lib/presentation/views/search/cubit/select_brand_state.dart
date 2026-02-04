part of 'select_brand_cubit.dart';

sealed class SelectBrandState {
  List<BrandItem> listSelectedBrand;
  bool isSelectAll = false;

  SelectBrandState({
    required this.listSelectedBrand,
    required this.isSelectAll,
  });
}

final class SelectBrandInitial extends SelectBrandState {
  SelectBrandInitial({
    required super.listSelectedBrand,
    required super.isSelectAll,
  });

  SelectBrandInitial copyWith({List<BrandItem>? items, bool? isSelectAll}) {
    return SelectBrandInitial(
      listSelectedBrand: items ?? listSelectedBrand,
      isSelectAll: isSelectAll ?? false,
    );
  }
}

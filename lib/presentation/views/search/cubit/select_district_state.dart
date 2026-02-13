part of 'select_district_cubit.dart';

sealed class SelectDistrictState {
  List<DistrictItem> listSelectedDistrict;

  SelectDistrictState({required this.listSelectedDistrict});
}

final class SelectDistrictInitial extends SelectDistrictState {
  SelectDistrictInitial({required super.listSelectedDistrict});

  SelectDistrictInitial copyWith({List<DistrictItem>? items}) {
    return SelectDistrictInitial(
      listSelectedDistrict: items ?? listSelectedDistrict,
    );
  }
}

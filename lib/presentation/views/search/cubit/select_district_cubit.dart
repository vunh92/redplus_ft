import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/domain/model/district.dart';

import '../../../../app/common/common.dart';
import '../select_district_screen.dart';

part 'select_district_state.dart';

@Injectable()
class SelectDistrictCubit extends Cubit<SelectDistrictState> {
  SelectDistrictCubit()
    : super(SelectDistrictInitial(listSelectedDistrict: []));

  Future<void> initSelectDistrict(List<DistrictModel> listDistrict) async {
    emit(
      SelectDistrictInitial(
        listSelectedDistrict: Constants.listDistrict
            .map(
              (item) => DistrictItem(
                district: item,
                isSelected: listDistrict
                    .where((e) => e.code == item.code)
                    .isNotEmpty,
              ),
            )
            .toList(),
      ),
    );
  }

  Future<void> selectDistrict(DistrictItem district) async {
    try {
      List<DistrictItem> updateList = state.listSelectedDistrict
          .map(
            (e) => e.district.code == district.code
                ? e.copyWith(isSelected: !e.isSelected)
                : e,
          )
          .toList();
      emit(SelectDistrictInitial(listSelectedDistrict: updateList));
    } catch (e) {
      print(e);
    }
  }

  Future<void> selectAllDistrict(bool isSelectAll) async {
    try {
      final List<DistrictItem> list = Constants.listDistrict
          .map((e) => DistrictItem(district: e, isSelected: isSelectAll))
          .toList();
      emit(SelectDistrictInitial(listSelectedDistrict: list));
    } catch (e) {
      print(e);
    }
  }
}

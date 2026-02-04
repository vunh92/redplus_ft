import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/domain/model/brand.dart';
import 'package:redplus_ft/presentation/views/search/select_brand_screen.dart';

import '../../../../app/common/constants.dart';

part 'select_brand_state.dart';

@Injectable()
class SelectBrandCubit extends Cubit<SelectBrandState> {
  SelectBrandCubit()
    : super(SelectBrandInitial(listSelectedBrand: [], isSelectAll: false));

  Future<void> initSelectBrand(List<BrandModel> listBrand) async {
    emit(
      SelectBrandInitial(
        listSelectedBrand: Constants.listBrand
            .map(
              (item) => BrandItem(
                brand: item,
                isSelected: listBrand.where((e) => e.id == item.id).isNotEmpty,
              ),
            )
            .toList(),
        isSelectAll: false,
      ),
    );
  }

  Future<void> selectBrand(BrandItem brand) async {
    try {
      List<BrandItem> updateList = state.listSelectedBrand
          .map(
            (e) => e.brand.id == brand.id
                ? e.copyWith(isSelected: !e.isSelected)
                : e,
          )
          .toList();
      emit(
        SelectBrandInitial(listSelectedBrand: updateList, isSelectAll: false),
      );
      // final selectedBrand = updateList
      //     .where((e) => e.brand.id == brand.id)
      //     .toList();
      // if (selectedBrand.isNotEmpty) {
      //   emit(
      //     SelectBrandInitial(listSelectedBrand: updateList, isSelectAll: false),
      //   );
      // } else {
      //   SelectBrandInitial(listSelectedBrand: updateList, isSelectAll: false);
      // }
    } catch (e) {
      print(e);
    }
  }

  Future<void> selectAllBrand(bool isSelectAll) async {
    try {
      final List<BrandItem> list = Constants.listBrand
          .map((e) => BrandItem(brand: e, isSelected: isSelectAll))
          .toList();
      emit(
        SelectBrandInitial(listSelectedBrand: list, isSelectAll: isSelectAll),
      );
    } catch (e) {
      print(e);
    }
  }
}

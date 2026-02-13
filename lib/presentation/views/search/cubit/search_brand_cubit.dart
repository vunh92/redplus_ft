import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/domain/model/brand.dart';
import 'package:redplus_ft/domain/model/district.dart';

part 'search_brand_state.dart';

@Injectable()
class SearchBrandCubit extends Cubit<SearchBrandState> {
  SearchBrandCubit() : super(SearchBrandState());

  Future<void> init({BrandModel? brandModel}) async {
    emit(
      state.copyWith(
        listBrand: brandModel != null ? [brandModel] : [],
        listDistrict: [],
      ),
    );
  }

  Future<void> initSelectBrand(List<BrandModel> listBrand) async {
    emit(state.copyWith(listBrand: listBrand));
  }

  Future<void> initSelectDistrict(List<DistrictModel> listDistrict) async {
    emit(state.copyWith(listDistrict: listDistrict));
  }
}

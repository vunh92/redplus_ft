import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/domain/model/brand.dart';

part 'search_brand_state.dart';

@Injectable()
class SearchBrandCubit extends Cubit<SearchBrandState> {
  SearchBrandCubit() : super(SearchBrandState());

  Future<void> initSelectBrand(List<BrandModel> listBrand) async {
    emit(state.copyWith(listBrand: listBrand, listBrandSearch: listBrand));
  }

  Future<void> initSelectArea(List<BrandModel> listBrand) async {
    emit(state.copyWith(listBrand: listBrand, listBrandSearch: listBrand));
  }
}

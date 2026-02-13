import 'package:injectable/injectable.dart';

import '../../../../app/cubit/base_cubit.dart';
import '../../../../domain/model/brand.dart';
import '../../../../domain/model/district.dart';
import '../../../../domain/repository/search_repository.dart';

part 'brand_detail_state.dart';

@Injectable()
class BrandDetailCubit extends BaseCubit {
  final SearchRepository _searchRepository;

  BrandDetailCubit(this._searchRepository) : super(BrandDetailInitial());

  Future<void> filterBrand({
    required List<BrandModel> listBrand,
    required List<DistrictModel> listDistrict,
  }) async {
    try {
      emit(LoadingState());
      final either = await _searchRepository.filterBrand(
        listBrand: listBrand,
        listDistrict: listDistrict,
      );
      either.fold(
        (failure) {
          emit(ErrorState(failure.message));
        },
        (data) async {
          emit(SuccessState(data));
        },
      );
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
  Future<void> searchBrand({
    required String search,
  }) async {
    try {
      emit(LoadingState());
      final either = await _searchRepository.searchBrand(
        search: search,
      );
      either.fold(
        (failure) {
          emit(ErrorState(failure.message));
        },
        (data) async {
          emit(SuccessState(data));
        },
      );
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}

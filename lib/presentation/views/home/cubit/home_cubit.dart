import 'package:injectable/injectable.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';

import '../../../../domain/repository/home_repository.dart';

part 'home_state.dart';

@Injectable()
class HomeCubit extends BaseCubit {
  final HomeRepository _homeRepository;

  HomeCubit(this._homeRepository) : super(HomeInitial());

  Future<void> fetchBanner() async {
    try {
      emit(LoadingState());
      final either = await _homeRepository.fetchBanner();
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

  Future<void> fetchHot() async {
    try {
      emit(LoadingState());
      final either = await _homeRepository.fetchHot();
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

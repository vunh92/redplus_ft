import 'package:injectable/injectable.dart';

import '../../../../app/cubit/base_cubit.dart';
import '../../../../domain/repository/home_repository.dart';

part 'banner_state.dart';

@Injectable()
class BannerCubit extends BaseCubit {
  final HomeRepository _homeRepository;
  BannerCubit(this._homeRepository) : super(BannerInitial());

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
}

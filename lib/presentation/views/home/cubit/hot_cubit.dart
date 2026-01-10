import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';

import '../../../../domain/repository/home_repository.dart';

part 'hot_state.dart';

@Injectable()
class HotCubit extends BaseCubit {
  final HomeRepository _homeRepository;
  HotCubit(this._homeRepository) : super(HotInitial());

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

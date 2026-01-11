
import 'package:injectable/injectable.dart';
import '../../../../app/cubit/base_cubit.dart';
import '../../../../domain/repository/home_repository.dart';

part 'deal_state.dart';

@Injectable()
class DealCubit extends BaseCubit {
  final HomeRepository _homeRepository;
  DealCubit(this._homeRepository) : super(DealInitial());

  Future<void> fetchDeal() async {
    try {
      emit(LoadingState());
      final either = await _homeRepository.fetchDeal();
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

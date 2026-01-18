import 'package:injectable/injectable.dart';

import '../../../../app/cubit/base_cubit.dart';
import '../../../../domain/repository/treatment_repository.dart';

part 'treatment_state.dart';

@Injectable()
class TreatmentCubit extends BaseCubit {
  final TreatmentRepository _treatmentRepository;
  TreatmentCubit(this._treatmentRepository) : super(TreatmentInitial());

  Future<void> fetchTreatment() async {
    try {
      emit(LoadingState());
      final either = await _treatmentRepository.fetchTreatment();
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
  Future<void> fetchAllTreatment() async {
    try {
      emit(LoadingState());
      final either = await _treatmentRepository.fetchAllTreatment();
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


import 'package:injectable/injectable.dart';

import '../../../../app/cubit/base_cubit.dart';
import '../../../../domain/repository/treatment_repository.dart';

part 'special_treatment_state.dart';

@Injectable()
class SpecialTreatmentCubit extends BaseCubit {
  final TreatmentRepository _treatmentRepository;
  SpecialTreatmentCubit(this._treatmentRepository) : super(SpecialTreatmentInitial());

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
}


import 'package:injectable/injectable.dart';

import '../../../../app/cubit/base_cubit.dart';
import '../../../../domain/repository/treatment_repository.dart';

part 'all_treatment_state.dart';

@Injectable()
class AllTreatmentCubit extends BaseCubit {
  final TreatmentRepository _treatmentRepository;
  AllTreatmentCubit(this._treatmentRepository) : super(AllTreatmentInitial());

  Future<void> fetchTreatment() async {
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

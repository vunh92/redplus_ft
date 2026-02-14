import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/domain/model/my_treatment.dart';
import 'package:redplus_ft/domain/model/user.dart';
import 'package:uuid/uuid.dart';

import '../../../../app/cubit/base_cubit.dart';
import '../../../../domain/model/treatment.dart';
import '../../../../domain/repository/treatment_repository.dart';

part 'treatment_detail_state.dart';

@Injectable()
class TreatmentDetailCubit extends BaseCubit {
  final TreatmentRepository _treatmentRepository;
  final Box<MyTreatment> _itemMyTreatment;

  TreatmentDetailCubit(this._treatmentRepository, this._itemMyTreatment)
    : super(TreatmentDetailInitial());

  Future<void> confirm({
    required User user,
    required TreatmentModel treatment,
  }) async {
    try {
      emit(LoadingState());
      final either = await _treatmentRepository.redeemTreatment(
        userPoint: user.point ?? 0,
        treatment: treatment,
      );
      either.fold(
        (failure) {
          emit(ErrorState(failure.message));
        },
        (data) async {
          if (data) {
            addTreatmentModel(user, treatment);
            emit(SuccessState(data));
            return;
          }
          emit(ErrorState('Không đủ điểm'));
        },
      );
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }

  Future<void> addTreatmentModel(User user, TreatmentModel item) async {
    final MyTreatment myTreatment = MyTreatment(
      id: item.id,
      userId: user.id,
      imageUrl: item.imageUrl,
      title: item.title,
      content: item.content,
      code: Uuid().v1(),
      status: 'Active',
      endDate: item.endDate,
      createdAt: DateTime.now().toString(),
      updatedAt: DateTime.now().toString(),
    );
    await _itemMyTreatment.add(myTreatment);
  }
}

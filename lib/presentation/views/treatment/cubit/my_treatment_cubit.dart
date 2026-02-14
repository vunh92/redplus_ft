import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/domain/model/my_treatment.dart';

part 'my_treatment_state.dart';

@Injectable()
class MyTreatmentCubit extends Cubit<MyTreatmentState> {
  final Box<MyTreatment> _itemMyTreatment;

  MyTreatmentCubit(this._itemMyTreatment)
    : super(MyTreatmentState(expiredTreatment: [], newTreatment: []));

  Future<void> fetchTreatment() async {
    try {
      emit(
        state.copyWith(
          newTreatment: _itemMyTreatment.values.toList(),
          expiredTreatment: _itemMyTreatment.values.toList().getRange(0, 2).toList(),
        ),
      );
    } catch (e) {
      // emit(ErrorState(e.toString()));
    }
  }
}

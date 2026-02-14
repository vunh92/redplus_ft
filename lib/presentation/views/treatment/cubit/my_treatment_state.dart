part of 'my_treatment_cubit.dart';

class MyTreatmentState {
  List<MyTreatment> newTreatment = [];
  List<MyTreatment> expiredTreatment = [];

  MyTreatmentState({
    required this.newTreatment,
    required this.expiredTreatment,
  });

  MyTreatmentState copyWith({
    List<MyTreatment>? newTreatment,
    List<MyTreatment>? expiredTreatment,
  }) {
    return MyTreatmentState(
      newTreatment: newTreatment ?? this.newTreatment,
      expiredTreatment: expiredTreatment ?? this.expiredTreatment,
    );
  }
}


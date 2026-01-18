import 'package:dartz/dartz.dart';

import '../../app/common/common.dart';
import '../model/treatment.dart';

abstract class TreatmentRepository {
  Future<Either<Failure, List<TreatmentModel>>> fetchTreatment();
  Future<Either<Failure, List<TreatmentModel>>> fetchAllTreatment();
}
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../app/common/common.dart';
import '../../domain/model/treatment.dart';
import '../../domain/repository/treatment_repository.dart';
import '../mock/mock_treatment.dart';
import '../network/treatment_api.dart';

@Injectable(as: TreatmentRepository)
class TreatmentRepositoryImpl extends TreatmentRepository {
  final TreatmentApi _treatmentApi;

  TreatmentRepositoryImpl(this._treatmentApi);

  @override
  Future<Either<Failure, List<TreatmentModel>>> fetchTreatment() async {
    try {
      final http.Response res = await _treatmentApi.fetchTreatment();
      await Future.delayed(Duration(milliseconds: 300));
      final listTreatment = MockTreatment().getListTreatment();
      return Right(listTreatment);
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TreatmentModel>>> fetchAllTreatment() async {
    try {
      final http.Response res = await _treatmentApi.fetchTreatment();
      await Future.delayed(Duration(milliseconds: 300));
      final listTreatment = MockTreatment().getListTreatment();
      return Right(listTreatment);
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

}

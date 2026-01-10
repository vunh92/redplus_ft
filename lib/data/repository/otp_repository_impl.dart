import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../app/common/constants.dart';
import '../../app/common/failure.dart';
import '../../domain/model/otp.dart';
import '../../domain/repository/otp_repository.dart';
import '../network/otp_api.dart';

@Injectable(as: OtpRepository)
class OtpRepositoryImpl extends OtpRepository {
  final OtpApi _otpApi;

  OtpRepositoryImpl(this._otpApi);

  @override
  Future<Either<Failure, bool>> submitOtp(String otp) async {
    try {
      final res = await _otpApi.submitOtp(otp);
      if ('0000' == otp) {
        return const Right(true);
      }
      return Left(Failure(201, 'Incorrect otp'));
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

  @override
  Future<Either<Failure, Otp>> requestNewOtp(String phone) async {
    try {
      // final http.Response res = await _authApi.signInUser(signInRequest);
      await Future.delayed(const Duration(milliseconds: 500));
      return Right(Otp(Constants.mockUser.phone ?? phone, '1111'));
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

}
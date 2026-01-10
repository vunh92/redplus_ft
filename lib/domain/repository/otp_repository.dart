import 'package:dartz/dartz.dart';

import '../../app/common/common.dart';
import '../model/otp.dart';

abstract class OtpRepository {
  Future<Either<Failure, bool>> submitOtp(String otp);
  Future<Either<Failure, Otp>> requestNewOtp(String phone);
}
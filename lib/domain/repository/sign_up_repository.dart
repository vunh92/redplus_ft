import 'package:dartz/dartz.dart';

import '../../app/common/common.dart';
import '../model/account.dart';
import '../model/otp.dart';

abstract class SignUpRepository {
  Future<Either<Failure, Otp>> submitPhoneNumber(String phone);
  Future<Either<Failure, Account>> submitAccount(String username, String password);
}
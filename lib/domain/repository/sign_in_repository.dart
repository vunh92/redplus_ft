import 'package:dartz/dartz.dart';
import 'package:redplus_ft/domain/model/user.dart';

import '../../app/common/common.dart';

abstract class SignInRepository {
  Future<Either<Failure, User>> submitPhoneNumber(String phone);
}
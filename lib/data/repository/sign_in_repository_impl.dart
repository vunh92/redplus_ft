import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../app/common/common.dart';
import '../../domain/model/account.dart';
import '../../domain/model/otp.dart';
import '../../domain/model/user.dart';
import '../../domain/repository/sign_in_repository.dart';
import '../network/sign_in_api.dart';

@Injectable(as: SignInRepository)
class SignInRepositoryImpl extends SignInRepository {
  final SignInApi _signInApi;
  final Box<User> _userBox;

  SignInRepositoryImpl(this._signInApi, this._userBox);

  @override
  Future<Either<Failure, User>> submitPhoneNumber(String phone) async {
    try {
      final http.Response res = await _signInApi.submitPhoneNumber(phone);
      await Future.delayed(const Duration(milliseconds: 1000));
      final listUser = _userBox.values.toList();
      final user = listUser.where((element) => element.phone == phone);
      if (user.isEmpty) {
        return Left(Failure(201, 'Số điện thoại chưa đăng ký. Bấm OK để đăng ký?'));
      }
      if (res.statusCode == 200) {
        return Right(user.first);
      }
      return Left(Failure(201, Constants.somethingWrong));
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

}
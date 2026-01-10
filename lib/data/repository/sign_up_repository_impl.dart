import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../app/common/common.dart';
import '../../domain/model/account.dart';
import '../../domain/model/otp.dart';
import '../../domain/repository/sign_up_repository.dart';
import '../network/sign_up_api.dart';

@Injectable(as: SignUpRepository)
class SignUpRepositoryImpl extends SignUpRepository {
  final SignUpApi _signUpApi;
  final Box<Account> _accountBox;

  SignUpRepositoryImpl(this._signUpApi, this._accountBox);

  @override
  Future<Either<Failure, Otp>> submitPhoneNumber(String phone) async {
    try {
      final http.Response res = await _signUpApi.submitPhoneNumber(phone);
      await Future.delayed(const Duration(milliseconds: 1000));
      final listAccount = _accountBox.values.toList();
      final account = listAccount.where((element) => element.phone == phone);
      if (account.isNotEmpty) {
        return Left(Failure(201, 'Account is exist'));
      }
      if (res.statusCode == 200) {
        final id = const Uuid().v1();
        final newAccount = Account(
          id: id,
          username: '',
          email: '',
          password: '',
          phone: phone,
        );
        await _accountBox.put(id, newAccount);
        return Right(Otp(Constants.mockUser.phone ?? phone, '1111'));
      }
      return Left(Failure(201, Constants.somethingWrong));
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

  @override
  Future<Either<Failure, Account>> submitAccount(String username, String password) async {
    try {
      final http.Response res = await _signUpApi.submitAccount(username, password);
      await Future.delayed(const Duration(milliseconds: 1000));
      final listAccount = _accountBox.values.toList();
      final account = listAccount.where((element) => element.username == username);
      if (account.isNotEmpty) {
        return Left(Failure(201, 'Account is exist'));
      }
      if (res.statusCode == 200) {
        final id = const Uuid().v1();
        final newAccount = Account(
          id: id,
          username: username,
          email: '',
          password: password,
          phone: '',
        );
        await _accountBox.put(id, newAccount);
        return Right(newAccount);
      }
      return Left(Failure(201, Constants.somethingWrong));
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

}
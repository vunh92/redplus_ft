import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../app/common/common.dart';
import '../../domain/model/account.dart';
import '../../domain/model/otp.dart';
import '../../domain/model/user.dart';
import '../../domain/repository/auth_repository.dart';
import '../network/auth_api.dart';
import '../request/sign_in_request.dart';
import '../request/sign_up_request.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthApi _authApi;
  final Box<Account> _itemAccount;

  AuthRepositoryImpl(this._authApi, this._itemAccount);

  @override
  Future<Either<Failure, Otp>> signInOtp(String phone) async {
    try {
      final http.Response res = await _authApi.signInOtp(phone);
      await Future.delayed(const Duration(milliseconds: 1000));
      final listAccount = _itemAccount.values.toList();
      final account = listAccount.where((element) => element.phone == phone);
      if (account.isNotEmpty) {
        return Left(Failure(201, 'Account is exist'));
      }
      if (Constants.mockUser.phone == phone) {
        return Right(Otp(Constants.mockUser.phone ?? phone, '0000'));
      }
      return Left(Failure(201, 'Error phone'));
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> isTokenValid({required token}) async {
    try {
      http.Response res = await AuthApi().isTokenValid(token: token);

      if (res.statusCode == 200) {
        bool isTokenValid = jsonDecode(res.body);

        return Right(isTokenValid);
      } else {
        return Left(Failure(res.statusCode, jsonDecode(res.body)['msg']));
        // throw jsonDecode(res.body)['msg'];
      }
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
      // throw Exception(e.toString());
    }
  }

  @override
  Future<Either<Failure, User>> signInUser(SignInRequest signInRequest) async {
    try {
      final http.Response res = await _authApi.signInUser(signInRequest);
      await Future.delayed(const Duration(seconds: 1));
      final listAccount = _itemAccount.values.toList();
      final account = listAccount.where((element) => element.username == signInRequest.username);
      if (account.isNotEmpty) {
        return Right(Constants.mockUser);
      }
      if (Constants.mockUser.email == signInRequest.username
          && Constants.mockUser.password == signInRequest.password) {
        return Right(Constants.mockUser);
      }
      return Left(Failure(201, 'Error email or password'));

      // final http.Response res = await _authApi.signInUser(signInRequest);
      //
      // if (res.statusCode == 200) {
      //   User user = User.fromMap(jsonDecode(res.body));
      //
      //   return Right(user);
      // } else {
      //   return Left(Failure(res.statusCode, jsonDecode(res.body)['msg']));
      //   // throw jsonDecode(res.body)['msg'];
      // }
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
      // throw Exception(e.toString());
    }
  }

  @override
  Future<Either<Failure, User>> singUpUser(SignUpRequest signUpRequest) async {
    try {
      // await Future.delayed(const Duration(seconds: 1));
      //
      // if (Constants.mockUser.email == signUpRequest.email) {
      //   return Left(Failure(201, 'Account is exist!'));
      // }
      //
      // if (Constants.mockAdmin.email == signUpRequest.email) {
      //   return Left(Failure(201, 'Account is exist!'));
      // }
      //
      // var user = User(
      //   id: signUpRequest.username,
      //   name: signUpRequest.name,
      //   email: signUpRequest.username,
      //   password: signUpRequest.password,
      //   address: '',
      //   type: 'user',
      //   token: 'token_user',
      //   phone: '',
      // );

      // return Right(user);

      http.Response res = await _authApi.signUpUser(signUpRequest);

      if (res.statusCode == 200) {
        User user = User.fromMap(jsonDecode(res.body));
        return Right(user);
      } else {
        return Left(Failure(res.statusCode, jsonDecode(res.body)['msg']));
        // throw jsonDecode(res.body)['msg'];
      }
    } catch (e) {
      return Left(Failure(e.hashCode, e.toString()));
      // throw Exception(e.toString());
    }
  }

}
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/domain/model/account.dart';

import '../domain/model/my_treatment.dart';
import '../domain/model/user.dart';

@module
abstract class RegisterModule {
  @preResolve // Pre-awaits the Future and registers the resolved value
  Future<Box<User>> get userBox async {
    // Ensure Hive is initialized and the adapter is registered before this point
    return await Hive.openBox<User>('users'); // Use your actual box name
  }

  @preResolve // Pre-awaits the Future and registers the resolved value
  Future<Box<Account>> get accountBox async {
    return await Hive.openBox<Account>('accounts');
  }
  @preResolve // Pre-awaits the Future and registers the resolved value
  Future<Box<MyTreatment>> get myTreatmentBox async {
    return await Hive.openBox<MyTreatment>('myTreatments');
  }
}
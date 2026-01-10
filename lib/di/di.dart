import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/di/di.config.dart';

import '../domain/model/account.dart';
import '../domain/model/user.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  await Hive.initFlutter();
  Hive.registerAdapter(AccountAdapter());
  Hive.registerAdapter(UserAdapter());
  await getIt.init();
  // final accountBox = await Hive.openBox<Account>("accounts");
  // getIt.registerLazySingleton(() => accountBox);
  // final userBox = await Hive.openBox<User>("users");
  // getIt.registerLazySingleton(() => userBox);
}

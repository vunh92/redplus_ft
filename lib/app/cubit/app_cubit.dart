import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/app/common/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/model/user.dart';
import '../common/utils.dart';

part 'app_state.dart';

@Injectable()
class AppCubit extends Cubit<AppState> {

  AppCubit() : super(const AppInitial());

  Future<void> fetchUser() async {
    try {
      final user = await getUserData();
      user != null ? emit(state.copyWith(user: user)) : emit(AppInitial());
    } catch (e) {
      emit(AppInitial());
    }
  }

  Future<String?> getAccessTokenData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final authToken = sharedPreferences.getString(KeyConstant.authToken);
    return authToken;
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/app/common/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_state.dart';

@Injectable()
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial());

  void redirectUser() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      emit(SplashSuccess(true));
      // if (await getUserToken()) {
      //   emit(UserLoginSuccess());
      // } else {
      //   emit(SplashSuccess(true));
      // }
      // final either = await _redirectionUseCase.redirectUser();
      // either.fold((l) {
      //   emit(const PageRedirectionInvalid(isValid: false, userType: 'invalid'));
      // }, (r) {
      //   emit(PageRedirectionSuccess(isValid: true, userType: r.type));
      // },);
    } catch (e) {
      // emit(const PageRedirectionInvalid(isValid: false, userType: 'invalid'));
      // throw Exception(e.toString());
    }
  }

  Future<bool> getUserToken() async {
    SharedPreferences sharedPreferences =
    await SharedPreferences.getInstance();
    final token = sharedPreferences.getString(KeyConstant.authToken);
    return token != null;
  }

}

import 'package:injectable/injectable.dart';
import 'package:redplus_ft/domain/model/account.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../app/common/constants.dart';

part 'account_state.dart';

@Injectable()
class AccountCubit extends BaseCubit {
  AccountCubit() : super(AccountInitial());

  Future<void> logout() async {
    emit(LoadingPopupState(true));
    try {
      SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
      await sharedPreferences.remove(KeyConstant.userData);
      await sharedPreferences.remove(KeyConstant.authToken);
      await Future.delayed(Duration(milliseconds: 500));
      emit(LoadingPopupState(false));
      emit(SignOutState());
    } catch (e) {
      emit(LoadingPopupState(false));
      emit(ErrorState(e.toString()));
    }
  }
}

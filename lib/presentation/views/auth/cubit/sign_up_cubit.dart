import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../app/common/common.dart';
import '../../../../domain/model/user.dart';
import '../../../../domain/repository/sign_up_repository.dart';

part 'sign_up_state.dart';

@Injectable()
class SignUpCubit extends BaseCubit {
  final SignUpRepository _signUpRepository;
  final Box<User> _itemUser;

  SignUpCubit(this._signUpRepository, this._itemUser)
    : super(SignUpInitial());

  Future<void> submit(String phone) async {
    try {
      if (!checkValidPhoneNumber(phone)) {
        emit(ErrorPhoneNumberState(Constants.invalidPhoneNumber));
        return;
      }
      emitLoadingPopup(true);
      final either = await _signUpRepository.submitPhoneNumber(phone);
      emitLoadingPopup(false);
      either.fold(
        (failure) {
          emit(ErrorState(failure.message));
        },
        (data) {
          emit(SuccessState(data));
        },
      );
    } catch (e) {
      emitError(e.toString());
    }
  }

  Future<void> addUser(User item) async {
    await _itemUser.add(item);
  }

  Future<void> saveUser(User userModel) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(KeyConstant.userData, userModel.toJson());
  }
}

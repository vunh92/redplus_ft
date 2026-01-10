import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../app/common/common.dart';
import '../../../../app/cubit/base_cubit.dart';
import '../../../../domain/model/user.dart';
import '../../../../domain/repository/sign_in_repository.dart';

part 'sign_in_state.dart';

@Injectable()
class SignInCubit extends BaseCubit {
  final SignInRepository _signInRepository;

  SignInCubit(this._signInRepository) : super(SignInInitial());

  Future<void> submit(String phone) async {
    try {
      if (!checkValidPhoneNumber(phone)) {
        emit(ErrorPhoneNumberState(Constants.invalidPhoneNumber));
        return;
      }
      emitLoadingPopup(true);
      final either = await _signInRepository.submitPhoneNumber(phone);
      emitLoadingPopup(false);
      either.fold(
        (failure) {
          emit(SignUpPhoneNumberState(phone, failure.message));
        },
        (data) async {
          await saveUser(data);
          emit(SuccessState(data));
        },
      );
    } catch (e) {
      emitError(e.toString());
    }
  }

  Future<void> saveUser(User userModel) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(KeyConstant.userData, userModel.toJson());
  }
}

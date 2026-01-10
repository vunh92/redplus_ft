import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../../../../app/common/constants.dart';
import '../../../../domain/model/account.dart';
import '../../../../domain/model/otp.dart';
import '../../../../domain/model/user.dart';
import '../../../../domain/repository/otp_repository.dart';

part 'otp_state.dart';

@Injectable()
class OtpCubit extends BaseCubit {
  final OtpRepository _otpRepository;
  final Box<User> _userBox;

  OtpCubit(this._otpRepository, this._userBox) : super(OtpInitial());

  Future otpCodeChange(String otp, String otpCode, bool isNew, String phone) async {
    try {
      if (otp.length > 4) return;
      if (otp.length < 4) {
        emit(OtpCodeChangeState(otp));
      } else {
        submitOtpCode(otp, otpCode, isNew, phone);
      }
    } catch (e) {
      emitError(e.toString());
    }
  }

  Future submitOtpCode(String otp, String otpCode, bool isNew, String phone) async {
    emit(LoadingPopupState(true));
    final either = await _otpRepository.submitOtp(otp);
    emit(LoadingPopupState(false));
    if (otp != otpCode) {
      emit(SubmitOtpError('Incorrect code'));
      return;
    } else {
      await saveToken();
      if (isNew) {
        final data = await addUser(phone);
        await saveUser(data);
      }
      emit(SubmitOtpSuccess());
    }
  }

  Future addUser(String phone) async {
    final id = const Uuid().v1();
    final newUser = User(
      id: id,
      username: '',
      email: '',
      password: '',
      phone: phone,
      name: 'Vu Nguyen',
      address: '',
      type: 'user',
      token: '',
      avatar: '',
      tier: 'Member Silver',
      point: 100,
    );
    await _userBox.put(id, newUser);
    return newUser;
  }

  Future requestNewOtp(String phone) async {
    emit(LoadingPopupState(true));
    final either = await _otpRepository.requestNewOtp(phone);
    emit(LoadingPopupState(false));
    either.fold(
      (l) {
        emit(SubmitOtpError(l.message));
      },
      (r) {
        emit(RequestNewOtpState(r));
      },
    );
  }

  Future<void> saveToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(KeyConstant.authToken, const Uuid().v4());
  }

  Future<void> saveUser(User userModel) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(KeyConstant.userData, userModel.toJson());
  }
}

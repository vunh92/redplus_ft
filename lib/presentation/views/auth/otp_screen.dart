import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:redplus_ft/app/cubit/app_cubit.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';

import '../../../app/common/common.dart';
import '../../../app/config/router/app_route_constants.dart';
import '../../../di/di.dart';
import '../../widgets/custom_dialog.dart';
import '../../widgets/custom_elevated_button.dart';
import 'cubit/otp_cubit.dart';
import 'cubit/otp_timer_cubit.dart';

class OtpScreen extends StatefulWidget {
  final String phone;
  final String otp;
  final bool isNew;

  const OtpScreen({
    super.key,
    required this.phone,
    required this.otp,
    required this.isNew,
  });

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController(text: '');
  String _otp = '';

  @override
  void initState() {
    _otp = widget.otp;
    _showOtpHardcode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future _showOtpHardcode() async {
    await Future.delayed(const Duration(seconds: 4));
    if (!mounted) return;
    var snackBar = SnackBar(
      // backgroundColor: Colors.black87,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
      content: Text(_otp),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future _returnHomeScreen(BuildContext context) async {
    context.read<AppCubit>().fetchUser();
    context.read<OtpTimerCubit>().stopWorkout();
    FocusManager.instance.primaryFocus?.unfocus();
    context.goNamed(AppRouteConstants.bottomBarRoute.name);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<OtpTimerCubit>()..startWorkout(),
        ),
        BlocProvider(create: (context) => getIt<OtpCubit>()),
      ],
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: SafeArea(
          child: Stack(
            children: [
              BlocConsumer<OtpCubit, BaseState>(
                listener: (context, state) async {
                  if (state is LoadingPopupState) {
                    if (state.isShow) {
                      showLoadingPopUp(context);
                    } else {
                      dismissDialog(context);
                    }
                  }
                  if (state is RequestNewOtpState) {
                    _otp = state.otp.otp;
                    context.read<OtpTimerCubit>().startWorkout();
                    _showOtpHardcode();
                  }
                  if (state is SubmitOtpSuccess) {
                    // dismissDialog(context);
                    _returnHomeScreen(context);
                  }
                  if (state is SubmitOtpError) {
                    // dismissDialog(context);
                    CustomDialog().showMessagePopUp(
                      context: context,
                      message: state.error,
                    );
                  }
                },
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 70),
                        Expanded(child: _inputOtpWidget(context, state)),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _inputOtpWidget(BuildContext context, BaseState state) {
    return Column(
      children: [
        const SizedBox(height: NumberConstant.basePaddingLarge),
        const Text(
          'Nhập mã xác nhận',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: NumberConstant.basePadding),
        const Text(
          'Mã xác nhận được gửi về thuê bao',
          style: TextStyle(fontSize: 13),
        ),
        Text(
          widget.phone,
          style: const TextStyle(color: AppColor.primary, fontSize: 13),
        ),
        const SizedBox(height: NumberConstant.basePadding),
        PinCodeTextField(
          controller: _otpController,
          backgroundColor: Colors.transparent,
          mainAxisAlignment: MainAxisAlignment.center,
          appContext: context,
          length: 4,
          onChanged: (String smsCode) {
            context.read<OtpCubit>().otpCodeChange(
              smsCode,
              _otp,
              widget.isNew,
              widget.phone,
            );
          },
          keyboardType: const TextInputType.numberWithOptions(),
          hintCharacter: "-",
          hintStyle: const TextStyle(color: Colors.grey),
          pinTheme: PinTheme(
            fieldOuterPadding: const EdgeInsets.only(left: 5, right: 5, top: 5),
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(6),
            fieldHeight: 60,
            fieldWidth: 50,
            inactiveColor: Colors.grey,
            // activeColor: customIndigoBackgroundColor,
            // selectedColor: customIndigoBackgroundColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: NumberConstant.basePadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Mã OTP hết hạn sau',
                style: TextStyle(color: AppColor.textSecondary, fontSize: 13),
              ),
              const SizedBox(width: NumberConstant.basePadding),
              BlocConsumer<OtpTimerCubit, OtpTimerState>(
                listener: (context, state) {
                  if (state is OtpTimerRunComplete) {
                    // dismissDialog(context);
                    _otp = '';
                    var snackBar = const SnackBar(
                      // backgroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(8),
                        ),
                      ),
                      content: Text('Hết thời gian nhập otp'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                builder: (context, state) {
                  return Text(
                    '${state.duration}s',
                    style: const TextStyle(
                      color: AppColor.primary,
                      fontSize: 13,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: NumberConstant.basePadding),
        CustomElevatedButton(
          disabled: _otpController.text.length < 4 || _otp.isEmpty,
          color: _otpController.text.length >= 4 && _otp.isNotEmpty
              ? AppColor.primary
              : AppColor.textSecondary,
          buttonText: 'Xác nhận',
          onPressed: () {
            if (_otpController.text.length >= 4) {
              context.read<OtpCubit>().submitOtpCode(
                _otpController.text,
                _otp,
                widget.isNew,
                widget.phone,
              );
            }
          },
        ),
        const SizedBox(height: 40),
        _requestOtpWidget(context),
      ],
    );
  }

  _requestOtpWidget(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Không nhận được OTP?',
          style: TextStyle(color: AppColor.text),
        ),
        Padding(
          padding: const EdgeInsets.only(left: NumberConstant.basePadding),
          child: InkWell(
            overlayColor: const WidgetStatePropertyAll(Colors.transparent),
            onTap: () {
              _otpController.clear();
              context.read<OtpCubit>().requestNewOtp(widget.phone);
            },
            child: const Text(
              'Gửi lại ngay',
              style: TextStyle(
                decoration: TextDecoration.underline,
                color: AppColor.primary,
                decorationColor: AppColor.primary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

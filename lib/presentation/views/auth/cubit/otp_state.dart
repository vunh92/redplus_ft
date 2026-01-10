part of 'otp_cubit.dart';

sealed class OtpState extends BaseState {}

final class OtpInitial extends OtpState {}

final class OtpCodeChangeState extends OtpState {
  final String otp;

  OtpCodeChangeState(this.otp);
}


final class RequestNewOtpState extends OtpState {
  final Otp otp;

  RequestNewOtpState(this.otp);
}

final class SubmitOtpSuccess extends OtpState {}

final class SubmitOtpError extends OtpState {
  final String error;

  SubmitOtpError(this.error);
}

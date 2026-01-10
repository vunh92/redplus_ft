part of 'sign_in_cubit.dart';

sealed class SignInState extends BaseState {}

final class SignInInitial extends SignInState {}

final class ErrorPhoneNumberState extends SignInState {
  final String message;

  ErrorPhoneNumberState(this.message);

  List<Object> get props => [];
}

final class SignUpPhoneNumberState extends SignInState {
  final String phone;
  final String message;

  SignUpPhoneNumberState(this.phone, this.message);

  List<Object> get props => [];
}

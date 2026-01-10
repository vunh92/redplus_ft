part of 'sign_up_cubit.dart';

sealed class SignUpState extends BaseState {}

final class SignUpInitial extends SignUpState {}

final class ErrorPhoneNumberState extends SignUpState {
  final String message;

  ErrorPhoneNumberState(this.message);

  List<Object> get props => [];
}

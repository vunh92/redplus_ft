part of 'splash_cubit.dart';

sealed class SplashState {}

final class SplashInitial extends SplashState {}

final class SplashSuccess extends SplashState {
  late final bool isValid;

  SplashSuccess(this.isValid);
}

final class UserLoginSuccess extends SplashState {
  UserLoginSuccess();
}

final class SplashInvalid extends SplashState {
  late final bool isValid;

  SplashInvalid(this.isValid);
}

part of 'account_cubit.dart';

sealed class AccountState extends BaseState {}

final class AccountInitial extends AccountState {}

final class SignOutState extends AccountState {}

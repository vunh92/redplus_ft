import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../../domain/model/account.dart';
import '../../domain/model/user.dart';

class KeyConstant {
  static const String authToken = "x-auth-token";
  static const String userData = "user_data";
  static const String accountData = "account_data";
}

class Constants {
  static const String empty = "";
  static const String zero = "0";
  static const String none = "none";
  static const String warning = "Warning";
  static const String pleaseCheckInternet = "Please check internet!";
  static const String invalidPhoneNumber = "Invalid phone number";
  static const String somethingWrong = "Something went wrong!";

  static OutlineInputBorder inputBorderStyle = const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black38),
    borderRadius: BorderRadius.all(
      Radius.circular(5),
    ),
  );

  static User mockUser = User(
      id: const Uuid().v1(),
      username: 'username',
      name: 'User',
      email: 'user@email.com',
      password: '123456',
      phone: '0334422586',
      address: 'Lê Văn Lương, Phước Kiển, Nhà Bè, TPHCM',
      type: 'user',
      token: 'token_user',
      tier: 'silver',
      point: 100,
  );
  static Account mockAccount = Account(
      id: const Uuid().v1(),
      username: 'account1',
      email: 'account1@email.com',
      password: '123456',
      phone: '0334422586',
  );
}

class NumberConstant {
  static const defaultLimit = 20;
  static const timeRealtimeData = 5;
  static Size sizeDevice(BuildContext context) => MediaQuery.of(context).size;
  static double parseSizeDevice(BuildContext context, double ratio) => MediaQuery.of(context).size.width*ratio;
  static double statusBarHeight(BuildContext context) => MediaQuery.of(context).padding.top;

  static const basePaddingSmall = 4.0;
  static const basePadding = 8.0;
  static const basePaddingLarge = 16.0;

  static const baseRadiusBorderSmall = 4.0;
  static const baseRadiusBorder = 8.0;
  static const baseRadiusBorderLarge = 16.0;

  static const baseSizeAvatarSmall = 40.0;
  static const baseSizeIcon = 24.0;
  static const baseSizeIconSmall = 18.0;

  static const compressImageQuality = 50;
  static const compressImagePercentage = 50;
}

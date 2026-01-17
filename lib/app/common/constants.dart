import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../../domain/model/account.dart';
import '../../domain/model/brand.dart';
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
    borderRadius: BorderRadius.all(Radius.circular(5)),
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

  static List<BrandModel> listBrand = [
    BrandModel(
      id: "brand_001",
      title: 'Thai Express',
      content: 'Thai Express',
      imageUrl:
          'https://media.loveitopcdn.com/3807/logo-thaiexpress-compressed.jpg',
    ),
    BrandModel(
      id: "brand_002",
      title: 'Hotpot',
      content: 'Hotpot',
      imageUrl:
          'https://images.urbox.vn/_img_server/2023/11/14/320/1699933577_6552ed89afcfc.png',
    ),
    BrandModel(
      id: "brand_003",
      title: 'Khao Lao',
      content: 'Khao Laos',
      imageUrl:
          'https://thisomallsala.vn:441/Resource/Images/Outlet/KHAOLAO/Icon/Icon_200_200.webp',
    ),
    BrandModel(
      id: "brand_004",
      title: 'SushiKei',
      content: 'SushiKei',
      imageUrl:
          'https://images.urbox.vn/_img_server/2023/11/14/320/1699933490_6552ed33046df.png',
    ),
    BrandModel(
      id: "brand_005",
      title: 'King BBQ',
      content: 'King BBQ',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEXhSCsNDV1cEmra5l2pBoY0Unj5osjgaZSg&s',
    ),
    BrandModel(
      id: "brand_006",
      title: 'Buk Buk',
      content: 'Buk Buk',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg7Kdv7_ayzGtTYwUU129tNv3p_J5MAx6TJw&s',
    ),
    BrandModel(
      id: "brand_007",
      title: 'Tasaki BBQ',
      content: 'Tasaki BBQ',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtxlOi0DI2Sa46VpWDFyU37vbvZL0mHyaIdg&s',
    ),
    BrandModel(
      id: "brand_008",
      title: 'Meiwei',
      content: 'Meiwei',
      imageUrl:
          'https://images.urbox.vn/_img_server/2023/11/14/640/1699933551_6552ed701947e.png',
    ),
    BrandModel(
      id: "brand_009",
      title: 'Wulao',
      content: 'Wulao',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTguLIstpQtSF5U1oEoml-rEj-N9Z-rZYYHkw&s',
    ),
    BrandModel(
      id: "brand_010",
      title: 'Tianxin',
      content: 'Tianxin',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQegICwvOH5VlwrlcDB37XXlUHc8nztjf4DjQ&s',
    ),
  ];
}

class NumberConstant {
  static const defaultLimit = 20;
  static const timeRealtimeData = 5;

  static Size sizeDevice(BuildContext context) => MediaQuery.of(context).size;

  static double parseSizeDevice(BuildContext context, double ratio) =>
      MediaQuery.of(context).size.width * ratio;

  static double statusBarHeight(BuildContext context) =>
      MediaQuery.of(context).padding.top;

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

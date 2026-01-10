import 'package:flutter/material.dart';

import 'common.dart';

baseShadow() => BoxShadow(
    color: AppColor.shadow,
    offset: Offset(0.0, 1.0),
    blurRadius: 16.0,
    spreadRadius: 1
);

baseShadowDecoration({Color? color = Colors.white, double radius = NumberConstant.baseRadiusBorder}) => BoxDecoration(
  color: color,
  borderRadius: BorderRadius.circular(radius),
  boxShadow: [
    baseShadow(),
  ],
);

baseBorderDecoration({Color? backgroundColor = Colors.white}) => BoxDecoration(
  color: backgroundColor,
  borderRadius: BorderRadius.circular(NumberConstant.baseRadiusBorder),
  border: Border.all(
    color: AppColor.border,
    width: 1,
  ),
);

cardWidget({required Widget child, double radius = NumberConstant.baseRadiusBorder}) => Container(
  decoration: baseShadowDecoration(radius: radius),
  child: ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: child
  ),
);
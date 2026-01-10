import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:redplus_ft/app/common/common.dart';

class AnimatedBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  AnimatedBottomNav({super.key, required this.currentIndex, required this.onTap});

  final iconList = <IconData>[
    Icons.home_filled,
    Icons.local_play,
    Icons.notifications,
    Icons.person,
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      backgroundColor: AppColor.primary,
      // splashColor: AppColor.greenColor,
      activeColor: AppColor.selectedNavBar,
      inactiveColor: AppColor.unselectedNavBar,
      leftCornerRadius: NumberConstant.baseRadiusBorderLarge,
      rightCornerRadius: NumberConstant.baseRadiusBorderLarge,
      icons: iconList,
      activeIndex: currentIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      onTap: onTap,
      //other params
    );
  }

}

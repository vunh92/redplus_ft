import 'package:flutter/material.dart';
import 'package:redplus_ft/app/common/app_color.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

class RollingBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final PageController controller;

  RollingBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.controller,
  });

  final iconList = [
    RollingBottomBarItem(
      Icons.home_filled,
      label: 'Page 1',
      activeColor: Colors.redAccent,
    ),
    RollingBottomBarItem(
      Icons.local_play,
      label: 'Page 2',
      activeColor: Colors.blueAccent,
    ),
    RollingBottomBarItem(
      Icons.qr_code_scanner,
      label: 'Page 2',
      activeColor: Colors.green,
    ),
    RollingBottomBarItem(
      Icons.notifications,
      label: 'Page 3',
      activeColor: Colors.yellowAccent,
    ),
    RollingBottomBarItem(
      Icons.person,
      label: 'Page 4',
      activeColor: Colors.orangeAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return RollingBottomBar(
      controller: controller,
      flat: true,
      useActiveColorByDefault: false,
      items: iconList,
      enableIconRotation: true,
      onTap: onTap,
    );
  }
}

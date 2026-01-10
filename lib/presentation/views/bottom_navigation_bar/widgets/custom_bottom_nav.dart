import 'package:flutter/material.dart';

import '../../../../app/common/common.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final List<BottomNavigationBarItem> bottomNavBarList;
  final Function(int)? onTap;
  const CustomBottomNav(
      {super.key,
      required this.currentIndex,
      required this.bottomNavBarList,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      child: SafeArea(
        child: Theme(
          data: ThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            selectedFontSize: 13,
            unselectedFontSize: 13,
            // item colors means label colors
            selectedItemColor: AppColor.primary,
            unselectedItemColor: Colors.black87,
            backgroundColor: AppColor.background,
            enableFeedback: false,
            iconSize: 28,
            elevation: 0, items: bottomNavBarList, onTap: onTap,
          ),
        ),
      ),
    );
  }
}

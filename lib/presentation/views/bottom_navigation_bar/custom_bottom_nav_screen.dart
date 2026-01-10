import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redplus_ft/presentation/views/account/account_screen.dart';
import 'package:redplus_ft/presentation/views/notification/notification_screen.dart';
import 'package:redplus_ft/presentation/views/scan/scan_screen.dart';
import 'package:redplus_ft/presentation/views/treatment/treatment_screen.dart';

import '../../../app/common/common.dart';
import '../../../di/di.dart';
import '../home/home_screen.dart';
import 'bloc/bottom_bar_bloc.dart';
import 'widgets/custom_bottom_nav.dart';

class CustomerBottomNavScreen extends StatefulWidget {
  // int _lastIndex = 0;

  const CustomerBottomNavScreen({super.key});

  @override
  State<CustomerBottomNavScreen> createState() => _CustomerBottomNavScreenState();
}

class _CustomerBottomNavScreenState extends State<CustomerBottomNavScreen> {
  List<Widget> pages = [
    const HomeScreen(),
    const TreatmentScreen(),
    const ScanScreen(),
    const NotificationScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<UserCubit>(context).getUserData();
    return BlocProvider(
      create: (context) => getIt<BottomBarBloc>(),
      child: BlocBuilder<BottomBarBloc, BottomBarState>(
        builder: (context, state) {
          if (state is BottomBarPageState) {
            return Scaffold(
                body: pages[state.index],
                bottomNavigationBar: CustomBottomNav(
                  currentIndex: state.index,
                  bottomNavBarList: items(index: state.index),
                  onTap: (page) {
                    // _lastIndex = page;
                    context
                        .read<BottomBarBloc>()
                        .add(BottomBarClickedEvent(index: page));
                  },
                ));
          }
          return const SizedBox();
        },
      ),
    );
  }

  List<BottomNavigationBarItem> items(
      {required int index, bool isOpen = false}) {
    return [
      bottomNavBarItem(
        index: index,
        iconName: 'home',
        isOpen: isOpen,
        page: 0,
        label: 'Trang chủ',
      ),
      bottomNavBarItem(
        index: index,
        iconName: 'plus',
        isOpen: isOpen,
        page: 1,
        label: 'Plus',
      ),
      bottomNavBarItem(
        index: index,
        iconName: 'promotion',
        isOpen: isOpen,
        page: 2,
        label: '',
      ),
      bottomNavBarItem(
        index: index,
        iconName: 'store',
        isOpen: isOpen,
        page: 3,
        label: 'Cửa hàng',
      ),
      bottomNavBarItem(
        index: index,
        iconName: 'entertainment',
        isOpen: isOpen,
        page: 4,
        label: 'Tài khoản',
      ),
    ];
  }

  BottomNavigationBarItem bottomNavBarItem({required String iconName,
    required int page,
    isOpen = false,
    required int index,
    required String label,
    double height = 20,
    double width = 20}) {
    return BottomNavigationBarItem(
        icon: Column(
          children: [
            Container(
              width: 42,
              height: 5.5,
              decoration: BoxDecoration(
                color: index == page ? AppColor.primary : Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Image.asset('assets/images/bottom_nav_bar/icon_$iconName.png',
                height: height,
                width: width,
                color: index == page ? AppColor.primary : Colors.black87),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
        label: label);
  }
}

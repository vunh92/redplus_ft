import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redplus_ft/presentation/views/account/account_screen.dart';
import 'package:redplus_ft/presentation/views/notification/notification_screen.dart';
import 'package:redplus_ft/presentation/views/treatment/treatment_screen.dart';

import '../../../app/common/common.dart';
import '../../../di/di.dart';
import '../home/home_screen.dart';
import 'bloc/bottom_bar_bloc.dart';
import 'widgets/animated_bottom_nav.dart';

class AnimatedBottomNavScreen extends StatefulWidget {
  // int _lastIndex = 0;

  const AnimatedBottomNavScreen({super.key});

  @override
  State<AnimatedBottomNavScreen> createState() =>
      _AnimatedBottomNavScreenState();
}

class _AnimatedBottomNavScreenState extends State<AnimatedBottomNavScreen> {
  late PageController _pageController;

  List<Widget> pages = [
    const HomeScreen(key: Key('home_screen')),
    const TreatmentScreen(key: Key('treatment_screen')),
    // const ScanScreen(key: Key('scan_screen'),),
    const NotificationScreen(key: Key('notification_screen')),
    const AccountScreen(key: Key('account_screen')),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BottomBarBloc>(),
      child: BlocConsumer<BottomBarBloc, BottomBarState>(
        listener: (context, state) {
          // _pageController.animateToPage(
          //   state.index,
          //   duration: Duration(milliseconds: 300),
          //   curve: Curves.ease,
          // );
          _pageController.jumpToPage(state.index);
        },
        builder: (context, state) {
          return Scaffold(
            body: _body(context, state),
            floatingActionButton: FloatingActionButton(
              backgroundColor: AppColor.primary,
              shape: const CircleBorder(),
              onPressed: () {},
              child: const Icon(Icons.qr_code_scanner),
              //params
            ),
            floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: AnimatedBottomNav(
              currentIndex: state.index,
              onTap: (page) {
                // _lastIndex = page;
                context.read<BottomBarBloc>().add(
                  BottomBarClickedEvent(index: page),
                );
              },
            ),
          );
        },
      ),
    );
  }

  _body(BuildContext context, BottomBarState state) {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {},
      children: pages,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redplus_ft/app/cubit/app_cubit.dart';
import 'package:redplus_ft/presentation/views/account/account_screen.dart';
import 'package:redplus_ft/presentation/views/notification/notification_screen.dart';
import 'package:redplus_ft/presentation/views/treatment/treatment_screen.dart';

import '../../../app/common/common.dart';
import '../../../di/di.dart';
import '../account/cubit/account_cubit.dart';
import '../home/cubit/home_cubit.dart';
import '../home/home_screen.dart';
import '../treatment/cubit/treatment_cubit.dart';
import 'bloc/bottom_bar_bloc.dart';
import 'widgets/animated_bottom_nav.dart';

class AnimatedBottomNavScreen extends StatefulWidget {
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
    const NotificationScreen(key: Key('notification_screen')),
    const AccountScreen(key: Key('account_screen')),
  ];

  @override
  void initState() {
    // context.read<AppCubit>().fetchUser();
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, appState) {
        if (appState.user != null) {
          context.read<BottomBarBloc>().add(
            const BottomBarClickedEvent(index: 0),
          );
        }
      },
      builder: (context, appState) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => getIt<AccountCubit>()),
            BlocProvider(create: (context) => getIt<HomeCubit>()),
            BlocProvider(create: (context) => getIt<TreatmentCubit>()),
          ],
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
                body: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (index) {},
                  children: [
                    HomeScreen(
                      key: const Key('home_screen'),
                      user: appState.user,
                    ),
                    TreatmentScreen(key: Key('treatment_screen'), user: appState.user),
                    const NotificationScreen(key: Key('notification_screen')),
                    AccountScreen(key: Key('account_screen'), user: appState.user,),
                  ],
                ),
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
      },
    );
  }
}

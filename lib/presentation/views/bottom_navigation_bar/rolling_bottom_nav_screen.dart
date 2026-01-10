import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redplus_ft/presentation/views/bottom_navigation_bar/widgets/rolling_bottom_nav.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';

import '../../../app/cubit/app_cubit.dart';
import '../../../di/di.dart';
import '../account/account_screen.dart';
import '../account/cubit/account_cubit.dart';
import '../home/cubit/home_cubit.dart';
import '../home/home_screen.dart';
import '../notification/notification_screen.dart';
import '../scan/scan_screen.dart';
import '../treatment/treatment_screen.dart';
import 'bloc/bottom_bar_bloc.dart';

class RollingBottomNavScreen extends StatefulWidget {
  const RollingBottomNavScreen({super.key});

  @override
  State<RollingBottomNavScreen> createState() => _RollingBottomNavScreenState();
}

class _RollingBottomNavScreenState extends State<RollingBottomNavScreen> {
  late PageController _pageController;

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
          ],
          child: BlocConsumer<BottomBarBloc, BottomBarState>(
            listener: (context, state) {
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
                    const TreatmentScreen(key: Key('treatment_screen')),
                    const ScanScreen(key: Key('scan_screen')),
                    const NotificationScreen(key: Key('notification_screen')),
                    AccountScreen(key: Key('account_screen'), user: appState.user,),
                  ],
                ),
                bottomNavigationBar: RollingBottomNav(
                  controller: _pageController,
                  currentIndex: state.index,
                  onTap: (page) {
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

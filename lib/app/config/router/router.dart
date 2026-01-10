import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../presentation/views/auth/otp_screen.dart';
import '../../../presentation/views/auth/sign_up_screen.dart';
import '../../../presentation/views/auth/sign_in_screen.dart';
import '../../../presentation/views/bottom_navigation_bar/animated_bottom_nav_screen.dart';
import '../../../presentation/views/home/home_screen.dart';
import '../../../presentation/views/splash_screen/splash_screen.dart';
import 'app_route_constants.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: AppRouteConstants.splashScreen.name,
      path: AppRouteConstants.splashScreen.path,
      pageBuilder: (context, state) {
        return const MaterialPage(child: SplashScreen());
      },
    ),
    GoRoute(
      name: AppRouteConstants.authRoute.name,
      path: AppRouteConstants.authRoute.path,
      pageBuilder: (context, state) {
        return const MaterialPage(child: SignInScreen());
        // return CustomTransitionPage(
        //   child: const SignInScreen(),
        //   transitionDuration: const Duration(milliseconds: 2000),
        //   transitionsBuilder: (context, animation, secondaryAnimation, child) {
        //     return FadeTransition(
        //       opacity: CurveTween(curve: Curves.ease).animate(animation),
        //       child: child,
        //     );
        //   },
        // );
      },
    ),
    GoRoute(
      name: AppRouteConstants.bottomBarRoute.name,
      path: AppRouteConstants.bottomBarRoute.path,
      pageBuilder: (context, state) {
        return MaterialPage(child: AnimatedBottomNavScreen());
        // return MaterialPage(child: RollingBottomNavScreen());
      },
    ),
    GoRoute(
      name: AppRouteConstants.homeScreenRoute.name,
      path: AppRouteConstants.homeScreenRoute.path,
      pageBuilder: (context, state) {
        return MaterialPage(child: HomeScreen());
      },
    ),
    GoRoute(
      name: AppRouteConstants.signInRoute.name,
      path: AppRouteConstants.signInRoute.path,
      pageBuilder: (context, state) {
        return MaterialPage(child: SignInScreen());
      },
    ),
    GoRoute(
      name: AppRouteConstants.signUpRoute.name,
      path: AppRouteConstants.signUpRoute.path,
      pageBuilder: (context, state) {
        return MaterialPage(child: SignUpScreen());
      },
    ),
    GoRoute(
      name: AppRouteConstants.otpRoute.name,
      path: AppRouteConstants.otpRoute.path,
      pageBuilder: (context, state) {
        return MaterialPage(
          child: OtpScreen(
            phone: state.uri.queryParameters['phone'] ?? '',
            otp: state.uri.queryParameters['otp'] ?? '',
            isNew: state.uri.queryParameters['isNew'] == 'true',
          ),
        );
      },
    ),
  ],
);

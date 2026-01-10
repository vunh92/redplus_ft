class AppRoute {
  final String name;
  final String path;

  const AppRoute({required this.name, required this.path});
}

class AppRouteConstants {
  static const splashScreen = AppRoute(name: 'splash-screen', path: '/');
  static const authRoute = AppRoute(name: 'auth-screen', path: '/auth-screen');
  static const otpRoute = AppRoute(name: 'otp-screen', path: '/otp-screen');
  static const signInRoute =
  AppRoute(name: 'sign-in-screen', path: '/sign-in-screen');
  static const signUpRoute =
  AppRoute(name: 'sign-up-screen', path: '/sign-up-screen');

  static const bottomBarRoute = AppRoute(name: 'bottomBar', path: '/bottomBar');

  static const homeScreenRoute =
      AppRoute(name: 'home-screen', path: '/home-screen');

}

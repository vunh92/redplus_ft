class AppRoute {
  final String name;
  final String path;

  const AppRoute({required this.name, required this.path});
}

class AppRouteConstants {
  static const splashScreen = AppRoute(name: 'splash-screen', path: '/');
  static const authRoute = AppRoute(name: 'auth-screen', path: '/auth-screen');
  static const otpRoute = AppRoute(name: 'otp-screen', path: '/otp-screen');
  static const signInRoute = AppRoute(
    name: 'sign-in-screen',
    path: '/sign-in-screen',
  );
  static const signUpRoute = AppRoute(
    name: 'sign-up-screen',
    path: '/sign-up-screen',
  );

  static const bottomBarRoute = AppRoute(name: 'bottomBar', path: '/bottomBar');

  static const homeScreenRoute = AppRoute(
    name: 'home-screen',
    path: '/home-screen',
  );
  static const postDetailScreenRoute = AppRoute(
    name: 'post-detail-screen',
    path: '/post-detail-screen',
  );
  static const treatmentDetailScreenRoute = AppRoute(
    name: 'treatment-detail-screen',
    path: '/treatment-detail-screen',
  );
  static const newsScreenRoute = AppRoute(
    name: 'news-screen',
    path: '/news-screen',
  );
  static const newsDetailScreenRoute = AppRoute(
    name: 'news-detail-screen',
    path: '/news-detail-screen',
  );
  static const searchBrandScreenRoute = AppRoute(
    name: 'search-brand-screen',
    path: '/search-brand-screen',
  );
  static const selectBrandScreenRoute = AppRoute(
    name: 'select-brand-screen',
    path: '/select-brand-screen',
  );
}

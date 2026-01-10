import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../presentation/views/bottom_navigation_bar/bloc/bottom_bar_bloc.dart';
import 'cubit/base_cubit.dart';
import 'config/config.dart';
import 'cubit/app_cubit.dart';
import '../di/di.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<BaseCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<BottomBarBloc>(),
        ),
        // BlocProvider(
        //   create: (context) => getIt<SplashCubit>(),
        // ),
      ],
      child: BlocProvider(
        create: (context) => getIt<AppCubit>()..fetchUser(),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light,
          routerConfig: router,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';

import '../../../app/config/router/app_route_constants.dart';
import '../../../di/di.dart';
import 'bloc/splash_cubit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SplashCubit>()..redirectUser(),
      child: Scaffold(
        body: BlocConsumer<SplashCubit, SplashState>(
          listener: (context, state) {
            if (state is UserLoginSuccess) {
              context.goNamed(AppRouteConstants.bottomBarRoute.name);
            }
            if (state is SplashSuccess) {
              // context.goNamed(AppRouteConstants.authRoute.name);}
              context.goNamed(AppRouteConstants.bottomBarRoute.name);
            }
            if (state is SplashInvalid) {
              context.goNamed(AppRouteConstants.authRoute.name);
            }
          },
          builder: (context, state) {
            return Center(
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: const [
                    BoxShadow(
                      color: AppColor.shadow,
                      offset: Offset(0.0, 3.0),
                      blurRadius: 16.0,
                      spreadRadius: 3
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(NumberConstant.baseRadiusBorderLarge),
                  child: Image.asset(
                    'assets/images/icon_app.webp',
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

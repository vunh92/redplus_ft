import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redplus_ft/presentation/views/search/cubit/search_brand_cubit.dart';
import '../presentation/views/bottom_navigation_bar/bloc/bottom_bar_bloc.dart';
import '../presentation/views/detail/cubit/treatment_detail_cubit.dart';
import '../presentation/views/home/cubit/deal_cubit.dart';
import '../presentation/views/news/cubit/news_cubit.dart';
import '../presentation/views/news/cubit/pagination_cubit.dart';
import '../presentation/views/search/cubit/brand_detail_cubit.dart';
import '../presentation/views/search/cubit/select_brand_cubit.dart';
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
        BlocProvider(create: (context) => getIt<BaseCubit>()),
        BlocProvider(create: (context) => getIt<BottomBarBloc>()),
        BlocProvider(create: (context) => getIt<NewsCubit>()),
        BlocProvider(create: (context) => getIt<PaginationCubit>()),
        BlocProvider(create: (context) => getIt<DealCubit>()),
        BlocProvider(create: (context) => getIt<SearchBrandCubit>()),
        BlocProvider(create: (context) => getIt<SelectBrandCubit>()),
        BlocProvider(create: (context) => getIt<BrandDetailCubit>()),
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

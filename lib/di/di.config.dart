// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive/hive.dart' as _i979;
import 'package:injectable/injectable.dart' as _i526;
import 'package:redplus_ft/app/cubit/app_cubit.dart' as _i33;
import 'package:redplus_ft/data/network/auth_api.dart' as _i615;
import 'package:redplus_ft/data/network/home_api.dart' as _i445;
import 'package:redplus_ft/data/network/otp_api.dart' as _i894;
import 'package:redplus_ft/data/network/sign_in_api.dart' as _i190;
import 'package:redplus_ft/data/network/sign_up_api.dart' as _i923;
import 'package:redplus_ft/data/repository/auth_repository_impl.dart' as _i38;
import 'package:redplus_ft/data/repository/home_repository_impl.dart' as _i373;
import 'package:redplus_ft/data/repository/otp_repository_impl.dart' as _i684;
import 'package:redplus_ft/data/repository/sign_in_repository_impl.dart'
    as _i42;
import 'package:redplus_ft/data/repository/sign_up_repository_impl.dart'
    as _i1001;
import 'package:redplus_ft/di/register_module.dart' as _i554;
import 'package:redplus_ft/domain/model/account.dart' as _i513;
import 'package:redplus_ft/domain/model/user.dart' as _i1050;
import 'package:redplus_ft/domain/repository/auth_repository.dart' as _i886;
import 'package:redplus_ft/domain/repository/home_repository.dart' as _i1038;
import 'package:redplus_ft/domain/repository/otp_repository.dart' as _i77;
import 'package:redplus_ft/domain/repository/sign_in_repository.dart' as _i492;
import 'package:redplus_ft/domain/repository/sign_up_repository.dart' as _i934;
import 'package:redplus_ft/presentation/views/account/cubit/account_cubit.dart'
    as _i1040;
import 'package:redplus_ft/presentation/views/auth/cubit/otp_cubit.dart'
    as _i987;
import 'package:redplus_ft/presentation/views/auth/cubit/otp_timer_cubit.dart'
    as _i4;
import 'package:redplus_ft/presentation/views/auth/cubit/sign_in_cubit.dart'
    as _i642;
import 'package:redplus_ft/presentation/views/auth/cubit/sign_up_cubit.dart'
    as _i480;
import 'package:redplus_ft/presentation/views/bottom_navigation_bar/bloc/bottom_bar_bloc.dart'
    as _i921;
import 'package:redplus_ft/presentation/views/home/cubit/banner_cubit.dart'
    as _i52;
import 'package:redplus_ft/presentation/views/home/cubit/home_cubit.dart'
    as _i930;
import 'package:redplus_ft/presentation/views/home/cubit/hot_cubit.dart'
    as _i1045;
import 'package:redplus_ft/presentation/views/scan/cubit/scan_cubit.dart'
    as _i899;
import 'package:redplus_ft/presentation/views/splash_screen/bloc/splash_cubit.dart'
    as _i568;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i979.Box<_i1050.User>>(
      () => registerModule.userBox,
      preResolve: true,
    );
    await gh.factoryAsync<_i979.Box<_i513.Account>>(
      () => registerModule.accountBox,
      preResolve: true,
    );
    gh.factory<_i33.AppCubit>(() => _i33.AppCubit());
    gh.factory<_i190.SignInApi>(() => _i190.SignInApi());
    gh.factory<_i894.OtpApi>(() => _i894.OtpApi());
    gh.factory<_i923.SignUpApi>(() => _i923.SignUpApi());
    gh.factory<_i4.OtpTimerCubit>(() => _i4.OtpTimerCubit());
    gh.factory<_i899.ScanCubit>(() => _i899.ScanCubit());
    gh.factory<_i568.SplashCubit>(() => _i568.SplashCubit());
    gh.factory<_i1040.AccountCubit>(() => _i1040.AccountCubit());
    gh.factory<_i921.BottomBarBloc>(() => _i921.BottomBarBloc());
    gh.lazySingleton<_i615.AuthApi>(() => _i615.AuthApi());
    gh.lazySingleton<_i445.HomeApi>(() => _i445.HomeApi());
    gh.factory<_i492.SignInRepository>(() => _i42.SignInRepositoryImpl(
          gh<_i190.SignInApi>(),
          gh<_i979.Box<_i1050.User>>(),
        ));
    gh.factory<_i934.SignUpRepository>(() => _i1001.SignUpRepositoryImpl(
          gh<_i923.SignUpApi>(),
          gh<_i979.Box<_i513.Account>>(),
        ));
    gh.factory<_i1038.HomeRepository>(
        () => _i373.HomeRepositoryImpl(gh<_i445.HomeApi>()));
    gh.factory<_i1045.HotCubit>(
        () => _i1045.HotCubit(gh<_i1038.HomeRepository>()));
    gh.factory<_i930.HomeCubit>(
        () => _i930.HomeCubit(gh<_i1038.HomeRepository>()));
    gh.factory<_i52.BannerCubit>(
        () => _i52.BannerCubit(gh<_i1038.HomeRepository>()));
    gh.factory<_i77.OtpRepository>(
        () => _i684.OtpRepositoryImpl(gh<_i894.OtpApi>()));
    gh.factory<_i987.OtpCubit>(() => _i987.OtpCubit(
          gh<_i77.OtpRepository>(),
          gh<_i979.Box<_i1050.User>>(),
        ));
    gh.factory<_i642.SignInCubit>(
        () => _i642.SignInCubit(gh<_i492.SignInRepository>()));
    gh.factory<_i480.SignUpCubit>(() => _i480.SignUpCubit(
          gh<_i934.SignUpRepository>(),
          gh<_i979.Box<_i1050.User>>(),
        ));
    gh.factory<_i886.AuthRepository>(() => _i38.AuthRepositoryImpl(
          gh<_i615.AuthApi>(),
          gh<_i979.Box<_i513.Account>>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i554.RegisterModule {}

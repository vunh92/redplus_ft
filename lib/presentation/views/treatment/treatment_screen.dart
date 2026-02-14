import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/presentation/views/treatment/cubit/treatment_cubit.dart';

import '../../../app/common/common.dart';
import '../../../app/config/config.dart';
import '../../../app/cubit/base_cubit.dart';
import '../../../di/di.dart';
import '../../../domain/model/user.dart';
import '../bottom_navigation_bar/bloc/bottom_bar_bloc.dart';
import '../bottom_navigation_bar/widgets/custom_clipper.dart';
import 'cubit/my_treatment_cubit.dart';
import 'widgets/all_treatment_widget.dart';
import 'widgets/special_treatment_widget.dart';

class _Constant {
  double heightAuth = 70.0;
  double heightHeader = 50.0;
  double heightOval = 60.0;

  String labelSignIn = 'Đăng nhập';
  String labelSignUp = 'Đăng ký';
  String point = 'Điểm';
  String myTreatment = 'Ưu đãi của tôi';
  String searchTreatment = 'Tìm kiếm ưu đãi...';
}

class TreatmentScreen extends StatefulWidget {
  final User? user;

  const TreatmentScreen({super.key, this.user});

  @override
  State<TreatmentScreen> createState() => _TreatmentScreenState();
}

class _TreatmentScreenState extends State<TreatmentScreen> {
  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TreatmentCubit, BaseState>(
      listener: (context, state) {
        if (state is SuccessState) {}
        if (state is LoadingPopupState) {}
      },
      builder: (context, state) {
        return Container(
          color: AppColor.primary,
          child: SafeArea(
            child: Container(
              color: Colors.white,
              child: RefreshIndicator(
                onRefresh: _refreshData,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: AppColor.primary,
                        child: _boxUser(context),
                      ),
                      SizedBox(
                        child: Stack(
                          children: [
                            ClipPath(
                              clipper: OvalBottomClipper(),
                              child: Container(
                                height:
                                    _Constant().heightOval +
                                    _Constant().heightOval / 3,
                                color: AppColor.primary,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: NumberConstant.basePaddingLarge,
                              ),
                              child: _boxHeader(context),
                            ),
                          ],
                        ),
                      ),
                      SpecialTreatmentWidget(),
                      SizedBox(height: NumberConstant.basePadding),
                      AllTreatmentWidget(),
                      SizedBox(height: 50),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  _boxSignIn(BuildContext context) {
    return SizedBox(
      child: Row(
        spacing: NumberConstant.basePadding,
        children: [
          Icon(Icons.account_circle, size: 40, color: Colors.white),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.white, width: 2),
            ),
            onPressed: () {
              context.pushNamed(AppRouteConstants.signInRoute.name);
            },
            child: Text(
              _Constant().labelSignIn,
              style: TextStyle(color: Colors.white),
            ),
          ),
          Spacer(),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: AppColor.green,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              context.pushNamed(AppRouteConstants.signUpRoute.name);
            },
            child: Text(_Constant().labelSignUp),
          ),
        ],
      ),
    );
  }

  _boxUser(BuildContext context) {
    final user = widget.user;
    if (user == null) {
      return _boxSignIn(context);
    }
    return BlocProvider(
      create: (context) => getIt<MyTreatmentCubit>()..fetchTreatment(),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: NumberConstant.basePaddingLarge,
            ),
            child: Column(
              children: [
                Row(
                  spacing: NumberConstant.basePaddingSmall,
                  children: [
                    Icon(Icons.ac_unit, size: 36, color: Colors.white),
                    InkWell(
                      onTap: () {
                        context.read<BottomBarBloc>().add(
                          const BottomBarClickedEvent(index: 3),
                        );
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            user.name ?? 'Customer',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          IntrinsicHeight(
                            child: Row(
                              spacing: NumberConstant.basePaddingSmall,
                              children: [
                                Text(
                                  user.tier ?? '',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                VerticalDivider(
                                  width: 2,
                                  thickness: 1,
                                  color: Colors.white,
                                ),
                                Text(
                                  '${user.point ?? 0} ${_Constant().point}',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
          Positioned(
            bottom: NumberConstant.basePadding,
            left: 0,
            right: NumberConstant.basePaddingLarge,
            child: Row(
              children: [
                Spacer(),
                InkWell(
                  onTap: () async {
                    // final user = await getUserData();
                    context.pushNamed(
                      AppRouteConstants.myTreatmentScreenRoute.name,
                    );
                  },
                  child: Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(
                      vertical: NumberConstant.basePaddingSmall,
                      horizontal: NumberConstant.basePadding,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        NumberConstant.baseRadiusBorderSmall,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        _Constant().myTreatment,
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(
                      vertical: NumberConstant.basePaddingSmall,
                      horizontal: NumberConstant.basePadding,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        NumberConstant.baseRadiusBorderSmall,
                      ),
                    ),
                    child: Icon(Icons.card_giftcard_sharp, size: 14),
                  ),
                ),
              ],
            ),
          ),
          BlocConsumer<MyTreatmentCubit, MyTreatmentState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Positioned(
                right: 2,
                bottom: 26,
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColor.green,
                  ),
                  child: Center(
                    child: Text(
                      state.newTreatment.length.toString(),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  _boxHeader(BuildContext context) {
    return Container(
      height: _Constant().heightHeader,
      decoration: baseShadowDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(NumberConstant.baseRadiusBorder),
                bottomLeft: Radius.circular(NumberConstant.baseRadiusBorder),
              ),
            ),
            padding: EdgeInsets.symmetric(
              vertical: NumberConstant.basePadding,
              horizontal: 12,
            ),
            child: Center(
              child: Icon(
                Icons.qr_code_scanner,
                size: 18,
                color: Colors.black38,
              ),
            ),
          ),
          Expanded(
            child: Row(
              spacing: NumberConstant.basePadding,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.search, size: 24, color: Colors.black38),
                Text(
                  _Constant().searchTreatment,
                  style: TextStyle(fontSize: 16, color: Colors.black38),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

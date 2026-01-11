import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';
import 'package:redplus_ft/presentation/views/home/cubit/home_cubit.dart';
import 'package:redplus_ft/presentation/views/home/widgets/brand_widget.dart';
import 'package:redplus_ft/presentation/views/home/widgets/deal_widget.dart';

import '../../../app/common/common.dart';
import '../../../app/config/config.dart';
import '../../../domain/model/user.dart';
import '../bottom_navigation_bar/bloc/bottom_bar_bloc.dart';
import '../bottom_navigation_bar/widgets/custom_clipper.dart';
import 'widgets/banner_widget.dart';
import 'widgets/hot_widget.dart';

class _Constant {
  double heightAuth = 70.0;
  double heightHeader = 110.0;

  String labelSignIn = 'Đăng nhập';
  String labelSignUp = 'Đăng ký';
}

class HomeScreen extends StatefulWidget {
  final User? user;

  const HomeScreen({super.key, this.user});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final List<Banner> listBanner = [];

  Future<void> _refreshData() async {
    // Simulate a network request or data fetching delay
    await Future.delayed(Duration(seconds: 1));
  }

  final PageController _pageController = PageController();

  @override
  void initState() {
    context.read<HomeCubit>().fetchBanner();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, BaseState>(
      listener: (context, state) {
        if (state is SuccessState) {}
        if (state is LoadingPopupState) {}
      },
      builder: (context, state) {
        return Scaffold(
          body: RefreshIndicator(
            onRefresh: _refreshData,
            child: SingleChildScrollView(
              // physics: ClampingScrollPhysics(),
              child: Column(
                spacing: NumberConstant.basePaddingLarge,
                children: [
                  SizedBox(
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: OvalBottomClipper(),
                          child: Container(
                            height:
                                NumberConstant.statusBarHeight(context) +
                                _Constant().heightAuth +
                                _Constant().heightHeader,
                            color: AppColor.primary,
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          left: 0.0,
                          right: 0.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: NumberConstant.basePaddingLarge,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              spacing: NumberConstant.basePadding,
                              children: <Widget>[
                                _boxUser(context),
                                _boxHeader(context),
                                // ...
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BannerWidget(),
                  HotWidget(),
                  DealWidget(),
                  BrandWidget(),
                  SizedBox(height: 50,)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _boxSignIn(BuildContext context) {
    return SizedBox(
      height: _Constant().heightAuth,
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
    return SizedBox(
      height: _Constant().heightAuth,
      child: Row(
        spacing: NumberConstant.basePadding,
        children: [
          Icon(Icons.ac_unit, size: 50, color: Colors.white),
          InkWell(
            onTap: () {
              context.read<BottomBarBloc>().add(
                const BottomBarClickedEvent(index: 5),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.name ?? 'Customer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  user.phone ?? '',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text(
                  user.type ?? '',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Colors.black45,
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Row(
              spacing: NumberConstant.basePadding,
              children: [
                Icon(Icons.monetization_on, color: Colors.white, size: 16),
                Text(
                  user.point.toString(),
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _boxHeader(BuildContext context) {
    return Container(
      height: _Constant().heightHeader,
      padding: EdgeInsets.all(NumberConstant.basePaddingLarge),
      decoration: baseShadowDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _iconMenuHeader(
            context,
            title: 'Nhà hàng',
            color: AppColor.green,
            icon: Icons.location_on,
            onTap: () {},
          ),
          _iconMenuHeader(
            context,
            title: 'Ưu đãi',
            color: AppColor.blue,
            icon: Icons.sell,
            onTap: () {},
          ),
          _iconMenuHeader(
            context,
            title: 'Tin tức',
            color: AppColor.orange,
            icon: Icons.rss_feed,
            onTap: () {},
          ),
          _iconMenuHeader(
            context,
            title: 'Hotline',
            color: AppColor.red,
            icon: Icons.phone,
            onTap: () {},
          ),
        ],
      ),
    );
  }

  _iconMenuHeader(
    BuildContext context, {
    required String title,
    required Color color,
    required IconData icon,
    required Function onTap,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 4,
      children: [
        InkWell(
          onTap: () => onTap(),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(icon, size: 28, color: Colors.white),
          ),
        ),
        Text(title),
      ],
    );
  }
}

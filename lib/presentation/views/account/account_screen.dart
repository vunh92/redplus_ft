import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../app/common/common.dart';
import '../../../app/config/config.dart';
import '../../../app/cubit/base_cubit.dart';
import '../../../app/cubit/app_cubit.dart';
import '../../../domain/model/user.dart';
import '../../widgets/custom_dialog.dart';
import '../bottom_navigation_bar/bloc/bottom_bar_bloc.dart';
import '../bottom_navigation_bar/widgets/custom_clipper.dart';
import 'cubit/account_cubit.dart';

class _Constant {
  double heightAuth = 70.0;
  double heightHeader = 110.0;
  String welcome = 'Xin chào Quý khách';
  String signInSignUp = 'Sign in/Sign up >';
  String editAccount = 'Chỉnh sửa tài khoản';

  String point = 'điểm';
  String rating = 'Hạng';
  String deal = 'Ưu đãi';
  String history = 'Lịch sử giao dịch';
  String listAccount = 'Danh sách tài khoản';
  String memberPolicy = 'Chính sách thành viên';
  String termsOfUse = 'Điều khoản sử dụng';
  String referFriends = 'Giới thiệu bạn bè';
  String deleteAccount = 'Xóa tài khoản';
  String language = 'Ngôn ngữ';
  String version = 'Phiên bản';
  String labelSignIn = 'Đăng nhập';
  String labelSignOut = 'Đăng xuất';
  String youWantSignOut = 'Bạn muốn đăng xuất';
}

class AccountScreen extends StatefulWidget {
  final User? user;

  const AccountScreen({super.key, this.user});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _refreshData() async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) {
    final user = widget.user;
    return BlocConsumer<AccountCubit, BaseState>(
      listener: (context, state) {
        if (state is LoadingPopupState) {
          if (state.isShow) {
            showLoadingPopUp(context);
          } else {
            dismissDialog(context);
          }
        }
        if (state is SignOutState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.black.withAlpha(150),
              content: Text('Sign out success!'),
            ),
          );
          context.read<AppCubit>().fetchUser();
        }
      },
      builder: (context, state) {
        return RefreshIndicator(
          onRefresh: _refreshData,
          child: ListView(
            padding: EdgeInsets.only(bottom: 40),
            children: [
              _headerWidget(context, user),
              user == null
                  ? _bodyWidget(context)
                  : _bodyUserWidget(context, user),
            ],
          ),
        );
      },
    );
  }

  _headerWidget(BuildContext context, User? user) {
    return Stack(
      children: [
        Stack(
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
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: NumberConstant.basePaddingLarge,
                  ),
                  child: user != null
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              user.name.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              user.phone.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(
                                NumberConstant.basePadding,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    _Constant().editAccount,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Center(
                          child: Text(
                            _Constant().welcome,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [baseShadow()],
            ),
            child: Icon(Icons.person_outline, size: 60, color: Colors.grey),
          ),
        ),
      ],
    );
  }

  _bodyWidget(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        _itemWidget(title: _Constant().rating, onTap: () {}),
        Divider(color: AppColor.disable),
        _itemWidget(
          title: _Constant().deal,
          onTap: () {
            context.read<BottomBarBloc>().add(BottomBarClickedEvent(index: 1));
          },
        ),
        Divider(color: AppColor.disable),
        _itemWidget(title: _Constant().memberPolicy, onTap: () {}),
        Divider(color: AppColor.disable),
        _itemWidget(title: _Constant().termsOfUse, onTap: () {}),
        Divider(color: AppColor.disable),
        _itemWidget(title: _Constant().language, onTap: () {}),
        Divider(color: AppColor.disable),
        _itemWidget(title: _Constant().version, onTap: () {}),
        Divider(color: AppColor.disable),
        Padding(
          padding: const EdgeInsets.all(NumberConstant.basePadding),
          child: TextButton(
            onPressed: () {
              context.pushNamed(AppRouteConstants.signInRoute.name);
            },
            child: Text(
              _Constant().labelSignIn,
              style: TextStyle(
                color: AppColor.primary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _bodyUserWidget(BuildContext context, User user) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        _itemWidget(
          title: user.tier.toString(),
          rightWidget: Row(
            spacing: NumberConstant.basePadding,
            children: [
              Text('${user.point} ${_Constant().point}'),
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: AppColor.textSecondary,
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(color: AppColor.disable),
        _itemWidget(
          title: _Constant().deal,
          onTap: () {
            context.read<BottomBarBloc>().add(BottomBarClickedEvent(index: 1));
          },
        ),
        Divider(color: AppColor.disable),
        _itemWidget(title: _Constant().history, onTap: () {}),
        Divider(color: AppColor.disable),
        _itemWidget(title: _Constant().listAccount, onTap: () {}),
        Divider(color: AppColor.disable),
        _itemWidget(title: _Constant().memberPolicy, onTap: () {}),
        Divider(color: AppColor.disable),
        _itemWidget(title: _Constant().termsOfUse, onTap: () {}),
        Divider(color: AppColor.disable),
        _itemWidget(title: _Constant().referFriends, onTap: () {}),
        Divider(color: AppColor.disable),
        _itemWidget(title: _Constant().deleteAccount, onTap: () {}),
        Divider(color: AppColor.disable),
        _itemWidget(
          title: _Constant().language,
          rightWidget: Row(
            spacing: NumberConstant.basePadding,
            children: [
              Text('Tiếng Việt'),
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: AppColor.textSecondary,
              ),
            ],
          ),
          onTap: () {},
        ),
        Divider(color: AppColor.disable),
        _itemWidget(
          title: _Constant().version,
          rightWidget: Row(
            spacing: NumberConstant.basePadding,
            children: [Text('1.0.0')],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(NumberConstant.basePadding),
          child: TextButton(
            onPressed: () {
              CustomDialog().showYesNoPopUp(
                context: context,
                message: _Constant().youWantSignOut,
                onOkPressed: () {
                  context.read<AccountCubit>().logout();
                },
              );
            },
            child: Text(
              _Constant().labelSignOut,
              style: TextStyle(
                color: AppColor.primary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  _itemWidget({required String title, Widget? rightWidget, Function()? onTap}) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(NumberConstant.basePaddingLarge),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(color: AppColor.text)),
            rightWidget ??
                Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: AppColor.textSecondary,
                ),
          ],
        ),
      ),
    );
  }
}

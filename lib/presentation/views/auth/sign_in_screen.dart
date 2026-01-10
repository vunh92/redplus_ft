import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';
import 'package:redplus_ft/app/cubit/base_cubit.dart';
import 'package:redplus_ft/presentation/views/auth/cubit/sign_in_cubit.dart';

import '../../../app/config/config.dart';
import '../../../di/di.dart';
import '../../../domain/model/user.dart';
import '../../widgets/custom_dialog.dart';
import '../../widgets/custom_elevated_button.dart';

class _Constant {
  double heightInput = 50.0;
  int maxLengthInput = 9;

  String labelSignIn = 'Đăng nhập';
  String labelSignUp = 'Đăng ký';
  String labelPhone = 'Nhập số điện thoại';
  String labelContinue = 'Tiếp tục';
}

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInCubit>(),
      child: Scaffold(
        appBar: _appBarWidget(),
        body: BlocConsumer<SignInCubit, BaseState>(
          listener: (context, state) {
            if (state is LoadingPopupState) {
              if (state.isShow) {
                showLoadingPopUp(context);
              } else {
                dismissDialog(context);
              }
            }
            if (state is ErrorPhoneNumberState) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.black.withAlpha(150),
                  content: Text(state.message),
                ),
              );
            }
            if (state is ErrorState) {
              CustomDialog().showMessagePopUp(
                context: context,
                message: state.message,
              );
            }
            if (state is SignUpPhoneNumberState) {
              CustomDialog().showYesNoPopUp(context: context, message: state.message, onOkPressed: () {
                context.pushNamed(AppRouteConstants.otpRoute.name,
                    queryParameters: {
                      'phone': state.phone,
                      'otp': '1111',
                      'isNew': 'true',
                    });
              },);
            }
            if (state is SuccessState<User>) {
              context.pushNamed(AppRouteConstants.otpRoute.name,
                queryParameters: {
                  'phone': state.data.phone,
                  'otp': '1111',
                  'isNew': 'false',
                });
            }
          },
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(
                  NumberConstant.basePaddingLarge,
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: _Constant().heightInput,
                          children: [
                            SizedBox(height: _Constant().heightInput),
                            Text(
                              _Constant().labelPhone,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.text,
                              ),
                            ),
                            Row(
                              spacing: NumberConstant.basePaddingLarge,
                              children: [
                                Container(
                                  height: _Constant().heightInput,
                                  decoration: baseBorderDecoration(),
                                  padding: EdgeInsets.all(
                                    NumberConstant.basePadding,
                                  ),
                                  child: Center(
                                    child: Text(
                                      '84',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: AppColor.text,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: _Constant().heightInput,
                                    decoration: baseBorderDecoration(),
                                    padding: EdgeInsets.all(
                                      NumberConstant.basePadding,
                                    ),
                                    child: Center(
                                      child: TextFormField(
                                        controller: _phoneController,
                                        maxLines: 1,
                                        onChanged: (value) {
                                          setState(() {});
                                        },
                                        autofocus: true,
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        keyboardType: TextInputType.phone,
                                        maxLength: _Constant().maxLengthInput,
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.text,
                                        ),
                                        decoration: InputDecoration(
                                          hintText: '000 000 000',
                                          isCollapsed: true,
                                          contentPadding: EdgeInsets.zero,
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.textHint,
                                          ),
                                          suffixIcon:
                                              _phoneController.text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      _phoneController
                                                          .clear();
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.cancel,
                                                    color: Colors.grey,
                                                  ),
                                                )
                                              : null,
                                          counterText: "",
                                        ),
                                        onTapOutside:
                                            (PointerDownEvent event) {
                                              FocusManager
                                                  .instance
                                                  .primaryFocus
                                                  ?.unfocus();
                                            },
                                        validator: (val) {
                                          if (val == null || val.isEmpty) {
                                            return 'This field cannot be empty';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: () {
                                final goRouter = GoRouter.of(context);
                                final matches = goRouter
                                    .routerDelegate
                                    .currentConfiguration
                                    .matches;
                                if (matches.length > 1) {
                                  final previousRoute =
                                      matches[matches.length - 2]
                                          .matchedLocation;
                                  if (previousRoute ==
                                      AppRouteConstants.signUpRoute.path) {
                                    if (context.canPop()) {
                                      context.pop();
                                    }
                                  } else {
                                    context.pushNamed(
                                      AppRouteConstants.signUpRoute.name,
                                    );
                                  }
                                } else {
                                  context.pushNamed(
                                    AppRouteConstants.signUpRoute.name,
                                  );
                                }
                              },
                              child: Text(
                                _Constant().labelSignUp,
                                style: TextStyle(
                                  color: AppColor.primary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: CustomElevatedButton(
                        buttonText: _Constant().labelContinue,
                        color: AppColor.blue,
                        disabled:
                            _phoneController.text.length <
                            _Constant().maxLengthInput,
                        onPressed: () {
                          context.read<SignInCubit>().submit(
                            '84${_phoneController.text}',
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  _appBarWidget() {
    return AppBar(
      title: Text(
        _Constant().labelSignIn,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        // IconButton(onPressed: (){}, icon: Icon(Icons.search)),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/base_cubit.dart';
import 'cubit/app_cubit.dart';

class AppComponent extends StatelessWidget {
  final Widget child;
  final AppBar? appBar;

  const AppComponent({super.key, required this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        if (state is LoadingPopupState) {
          // if (state.isShow) {
          //   showLoadingPopUp(context);
          // } else {
          //   dismissDialog(context);
          // }
        }
        if (state is ErrorState) {
          // dismissDialog(context);
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(state.message),
          //     backgroundColor: Colors.red,
          //   ),
          // );
        }
      },
      builder: (context, state) {
        return child;
      },
    );
  }
}

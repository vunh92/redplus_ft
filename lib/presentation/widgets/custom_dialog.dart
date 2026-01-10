import 'package:flutter/material.dart';

import '../../app/common/common.dart';
import 'custom_elevated_button.dart';

class CustomDialog {
  // showPopUp({
  //   required BuildContext context,
  //   required String message,
  //   String title = Constants.empty,
  // }) {
  //   WidgetsBinding.instance.addPostFrameCallback((_) => showDialog(
  //       barrierDismissible: false,
  //       context: context,
  //       builder: (BuildContext context) => PopScope(
  //         canPop: false,
  //         child: StateRenderer(
  //             stateRendererType: stateRendererType,
  //             message: message,
  //             title: title,
  //             retryActionFunction: () {},
  //             resetFlowState: resetFlowState
  //         ),
  //       )));
  // }

  showMessagePopUp({
    required BuildContext context,
    required String message,
    String title = 'Thông báo',
    String textBtn = 'OK',
  }) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext ctx) => PopScope(
          canPop: false,
          child: Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.all(NumberConstant.basePaddingLarge),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  NumberConstant.baseRadiusBorderLarge,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: NumberConstant.basePadding,
                    ),
                    child: Text(
                      message,
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColor.textSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: NumberConstant.basePaddingLarge),
                  CustomElevatedButton(
                    buttonText: textBtn,
                    onPressed: () {
                      dismissDialog(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showYesNoPopUp({
    required BuildContext context,
    required String message,
    String title = 'Thông tin',
    String okBtn = 'OK',
    String cancelBtn = 'Huỷ',
    Color colorOkBtn = AppColor.blue,
    Color colorCancelBtn = AppColor.red,
    required Function() onOkPressed,
  }) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext ctx) => PopScope(
          canPop: false,
          child: Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              padding: const EdgeInsets.all(NumberConstant.basePaddingLarge),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  NumberConstant.baseRadiusBorderLarge,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: NumberConstant.basePadding,
                    ),
                    child: Text(
                      message,
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColor.textSecondary,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: NumberConstant.basePaddingLarge),
                  Row(
                    spacing: NumberConstant.basePaddingLarge,
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          buttonText: cancelBtn,
                          color: colorCancelBtn,
                          onPressed: () {
                            dismissDialog(context);
                          },
                        ),
                      ),
                      Expanded(
                        child: CustomElevatedButton(
                          buttonText: okBtn,
                          color: colorOkBtn,
                          onPressed: () {
                            dismissDialog(context);
                            onOkPressed();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

showLoadingPopUp(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback(
    (_) => showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => PopScope(
        canPop: false,
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              NumberConstant.baseRadiusBorder,
            ),
          ),
          elevation: 1.5,
          backgroundColor: Colors.transparent,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(NumberConstant.basePaddingLarge),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  NumberConstant.baseRadiusBorder,
                ),
              ),
              child: CircularProgressIndicator(
                color: AppColor.primary,
                backgroundColor: AppColor.primary.withAlpha(10),
                strokeWidth: 4,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}

dismissDialog(BuildContext context) {
  if (ModalRoute.of(context)?.isCurrent != true) {
    Navigator.of(context, rootNavigator: true).pop(true);
  }
}

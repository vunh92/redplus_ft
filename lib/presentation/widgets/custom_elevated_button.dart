import 'package:flutter/material.dart';

import '../../app/common/common.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.textStyle,
    this.isRounded = false,
    this.color = AppColor.primary,
    this.textColor = Colors.white,
    this.disabled = false,
  });

  final String buttonText;
  final TextStyle? textStyle;
  final Function()? onPressed;
  final Color color;
  final Color textColor;
  final bool isRounded;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: disabled ? 0.4 : 1,
      child: ElevatedButton(
        onPressed: !disabled ? onPressed : null,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(color),
          overlayColor: WidgetStatePropertyAll(textColor.withAlpha(25)),
          elevation: const WidgetStatePropertyAll(0),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: !isRounded
                  ? const BorderRadius.all(
                      Radius.circular(NumberConstant.baseRadiusBorder),
                    )
                  : const BorderRadius.all(Radius.circular(50)),
            ),
          ),
          fixedSize: WidgetStatePropertyAll(
            Size(MediaQuery.sizeOf(context).width, 45),
          ),
        ),
        child: Text(
          buttonText,
          style: textStyle ?? TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

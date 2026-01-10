import 'package:flutter/material.dart';

import '../../app/common/common.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String error;
  final int maxLines;
  final int maxLengths;
  final TextInputType keyboardType;
  final void Function(String)? onChanged;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.error = '',
    this.maxLines = 1,
    this.maxLengths = 200,
    this.onChanged,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        maxLength: maxLengths,
        onChanged: onChanged,
        cursorColor: AppColor.primary,
        autofocus: false,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          // constraints: const BoxConstraints(minHeight: 70, maxHeight: 70),
          counterText: '',  //show/hide max length
          hintText: hintText,
          hintStyle: const TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black38),
            borderRadius: BorderRadius.all(Radius.circular(NumberConstant.baseRadiusBorder)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black38),
            borderRadius: BorderRadius.all(Radius.circular(NumberConstant.baseRadiusBorder)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.green),
            borderRadius: BorderRadius.all(Radius.circular(NumberConstant.baseRadiusBorder)),
          ),
        ),
        validator: (val) {
          if (val == null || val.isEmpty) {
            return 'This field cannot be empty';
          }
          if (error.isNotEmpty) {
            return error;
          }
          return null;
        },
      ),
    );
  }
}

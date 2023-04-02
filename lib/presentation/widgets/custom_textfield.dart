// ignore_for_file: unnecessary_null_in_if_null_operators, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:graduation_project/core/app_theme/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final double? width;
  final String? hintText;
  final String? labelText;
  var onChanged;
  var validatorFun;
  final int? maxLines;
  final TextInputType? textInputType;
  final bool? isSecure;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? focusColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final InputBorder? border;
  final String? initialValue;
  final double? borderRadius;

  CustomTextFormField(
      {Key? key,
      this.controller,
      this.textInputType,
      this.maxLines,
      this.width,
      this.hintText = "",
      this.labelText,
      this.onChanged,
      this.validatorFun,
      this.isSecure = false,
      this.backgroundColor = AppColors.kDeepWhiteColor,
      this.textColor = Colors.black,
      this.borderColor = Colors.grey,
      this.focusColor,
      this.prefixIcon,
      this.suffixIcon,
      this.border,
      this.initialValue,
      this.borderRadius = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    //SizeConfig().init(context);
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 6),
      //width: width ?? ScreenUtil().screenWidth * 0.9,
//      decoration: BoxDecoration(
//          color: backgroundColor,
//          borderRadius: BorderRadius.circular(borderRadius),
//          border: Border.all(color: borderColor)
//      ),
      child: TextFormField(
        controller: controller,
        validator: validatorFun,
        obscureText: isSecure!,
        keyboardType: textInputType ?? TextInputType.text,
        style: theme.textTheme.bodyText1
            ?.copyWith(color: textColor, fontWeight: FontWeight.bold),
        cursorColor: Colors.blueAccent,
        textAlign: TextAlign.start,
        maxLines: maxLines ?? 1,
        onChanged: onChanged,
        initialValue: initialValue ?? null,
        decoration: InputDecoration(
          focusColor: focusColor ?? AppColors.kDeepWhiteColor,
          fillColor: backgroundColor ?? AppColors.kDeepWhiteColor,
          prefixIcon: prefixIcon ?? null,
          suffixIcon: suffixIcon ?? null,
          labelText: labelText,
          hintText: hintText,
          labelStyle: const TextStyle(color: Colors.grey),

          hintStyle: const TextStyle(fontFamily: '', color: Colors.grey),

          border: border ?? null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15),
            borderSide: BorderSide(color: borderColor ?? Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15),
            borderSide: BorderSide(color: borderColor ?? Colors.grey),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 15),
            borderSide: BorderSide(color: borderColor ?? Colors.grey),
          ),
          //border: InputBorder.none,
        ),
      ),
    );
  }
}

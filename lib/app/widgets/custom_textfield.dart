import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/config/color.dart';
import '../core/config/style.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final bool? readOnly;
  final Widget? suffixIcon;
  final Widget? suffixIconColor;
  final Widget? prefixIcon;
  final String? hintText;
  final Widget? label;
  final String? extraLabel;
  final TextStyle? labelStyle;
  final TextStyle? extraLabelStyle;
  final TextStyle? errorStyle;
  final VoidCallback? onTap;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final EdgeInsetsGeometry? padding;
  final Color? cursorColor;
  final TextAlign? textAlign;
  final double? fontSize;
  final List<TextInputFormatter>? inputFormatters;
  final bool? autofocus;
  final TextStyle? style;
  final String? errorText;
  final VoidCallback? onEditingComplete;
  final int? maxLines;
  final double? marginBottom;

  const CustomTextField(
      {super.key,
      this.controller,
      this.obscureText,
      this.readOnly,
      this.suffixIcon,
      this.prefixIcon,
      this.hintText,
      this.label,
      this.onTap,
      this.autovalidateMode,
      this.keyboardType,
      this.validator,
      this.onChange,
      this.padding,
      this.cursorColor,
      this.inputFormatters,
      this.autofocus,
      this.textAlign,
      this.fontSize,
      this.style,
      this.errorText,
      this.onEditingComplete,
      this.maxLines,
      this.suffixIconColor,
      this.extraLabel,
      this.extraLabelStyle,
      this.labelStyle,
      this.errorStyle,
      this.marginBottom});

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: TextFormField(
          // ********** controller ********
          controller: controller,
          // ********** validator ********
          validator: validator,
          // ********** onChanged ********
          onChanged: onChange,
          // ********** obscureText ********
          obscureText: obscureText ?? false,
          // ********** readOnly ********
          readOnly: readOnly ?? false,
          // ********** autovalidateMode ********
          autovalidateMode: autovalidateMode,
          // ********** cursorColor ********
          cursorColor: cursorColor,
          // ********** maxLines ********
          maxLines: maxLines ?? 1,
          // ********** autofocus ********
          autofocus: autofocus ?? false,
          // ********** textAlign ********
          textAlign: textAlign ?? TextAlign.start,
          // ********** onTap ********
          onTap: onTap,
          // ********** style ********
          style: style ?? kTitleMedium,
          // ********** controller ********
          onEditingComplete: onEditingComplete,
          // ********** keyboardType ********
          keyboardType: keyboardType,
          //! ********** decoration ********
          decoration: InputDecoration(
            // ********** errorText ********
            errorText: errorText,
            errorStyle: errorStyle ?? kBodyLarge.copyWith(color: kDangerColor),
            errorMaxLines: 5,
            // ********** padding ********
            contentPadding: padding ??
                EdgeInsets.symmetric(vertical: 17.h, horizontal: 17.h),
            // ********** prefixIcon ********
            prefixIcon: prefixIcon,
            // ********** suffixIcon ********
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: kDisabledColor.withOpacity(.4),
            // ********** border ********
            border: InputBorder.none,
            // ********** focusedBorder ********
            focusedBorder: InputBorder.none,
            // ********** enabledBorder ********
            enabledBorder: InputBorder.none,
            // ********** errorBorder ********
            errorBorder: InputBorder.none,
            // ********** hintText ********
            hintText: hintText,
            hintStyle: kTitleMedium.copyWith(color: kTextColorLight),
            // ********** label ********
            label: label,
            labelStyle: labelStyle ?? kTitleMedium,
          ),
          // ********** inputFormatters ********
          inputFormatters: inputFormatters,
        ),
      );
}

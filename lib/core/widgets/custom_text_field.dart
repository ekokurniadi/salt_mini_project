import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salt_flutter_mini_project/core/constant/assets_constant.dart';
import 'package:salt_flutter_mini_project/core/styles/color_name_style.dart';
import 'package:salt_flutter_mini_project/core/styles/text_name_style.dart';
import 'dart:math' as math;

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.textInputType = TextInputType.text,
    this.controller,
    this.isReadOnly = false,
    this.validator,
    this.isOption = false,
    this.onTap,
    this.mouseCursor,
    this.maxLines = 1,
    this.minLines = 1,
    this.onChange,
    this.inputFormatters,
    this.isRequired = false,
    this.isCopy = false,
    this.isCalendar = false,
    this.focusNode,
    this.needBottomPadding = true,
    this.isPriceFormat = false,
  });

  final String label;
  final bool isPassword;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final bool isReadOnly;
  final String? Function(String?)? validator;
  final bool isOption;
  final bool isCopy;
  final bool isCalendar;
  final void Function()? onTap;
  final void Function(String)? onChange;
  final MouseCursor? mouseCursor;
  final int? maxLines;
  final int? minLines;
  final List<TextInputFormatter>? inputFormatters;
  final bool isRequired;
  final FocusNode? focusNode;
  final bool needBottomPadding;
  final bool isPriceFormat;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final ValueNotifier<bool> obsecureText = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: obsecureText,
      builder: (context, val, _) {
        return GestureDetector(
          onTap: widget.onTap,
          child: Padding(
            padding: widget.needBottomPadding
                ? EdgeInsets.only(bottom: 16.h)
                : EdgeInsets.zero,
            child: SizedBox(
              width: double.infinity,
              child: TextFormField(
                inputFormatters: widget.inputFormatters,
                focusNode: widget.focusNode,
                onChanged: widget.onChange,
                minLines: widget.minLines,
                maxLines: widget.maxLines,
                mouseCursor: widget.mouseCursor,
                onTap: widget.onTap,
                obscureText: widget.isPassword ? obsecureText.value : false,
                keyboardType: widget.textInputType,
                controller: widget.controller,
                readOnly: widget.isReadOnly,
                validator: widget.isRequired
                    ? (v) {
                        if (v!.isEmpty) {
                          return 'Please fill out this field !';
                        }
                        return null;
                      }
                    : widget.validator,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  hintText: widget.label,
                  label: Text(
                    widget.label,
                    style: AppTexts.getStyle(
                      typeName: TextTypeName.headline4,
                      styleName: TextStyleName.regular,
                      color: AppColors.text300,
                      context: context,
                    ).style,
                  ),
                  suffixIcon: widget.isPassword
                      ? TextButton(
                          onPressed: () {
                            obsecureText.value = !obsecureText.value;
                          },
                          child: !obsecureText.value
                              ? Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: AppColors.neutral500,
                                  size: 21.w,
                                )
                              : SvgPicture.asset(
                                  AssetsConstant.svgAssetsIconEye,
                                  color: AppColors.neutral500,
                                ),
                        )
                      : widget.isOption
                          ? TextButton(
                              onPressed: widget.onTap,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: AppColors.neutral500,
                                size: 21.w,
                              ),
                            )
                          : widget.isCopy
                              ? TextButton(
                                  onPressed: widget.onTap,
                                  child: Icon(
                                    Icons.copy_rounded,
                                    color: AppColors.primary500,
                                    size: 21.w,
                                  ),
                                )
                              : widget.isCalendar
                                  ? TextButton(
                                      onPressed: widget.onTap,
                                      child: Icon(
                                        Icons.calendar_month_rounded,
                                        color: AppColors.neutral300,
                                        size: 21.w,
                                      ),
                                    )
                                  : null,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class DecimalTextInputFormatter extends TextInputFormatter {
  const DecimalTextInputFormatter({
    this.decimalRange = 1,
  });

  final int? decimalRange;

  FilteringTextInputFormatter get allowDot =>
      FilteringTextInputFormatter.allow(RegExp(r'(^\d*\.?\d{0,2})'));

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, // unused.
    TextEditingValue newValue,
  ) {
    TextSelection newSelection = newValue.selection;
    String truncated = newValue.text;

    if (decimalRange != null) {
      final String value = newValue.text;

      if (value.contains('.') &&
          value.substring(value.indexOf('.') + 1).length > decimalRange!) {
        truncated = oldValue.text;
        newSelection = oldValue.selection;
      } else if (value == '.') {
        truncated = '0.';

        newSelection = newValue.selection.copyWith(
          baseOffset: math.min(truncated.length, truncated.length + 1),
          extentOffset: math.min(truncated.length, truncated.length + 1),
        );
      }

      return TextEditingValue(
        text: truncated,
        selection: newSelection,
        composing: TextRange.empty,
      );
    }
    return newValue;
  }
}

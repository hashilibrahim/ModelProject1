import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color appPrimary = Colors.blue;
  static const Color hintTextColor = Colors.grey;
}

Widget customText({
  String? text,
  double? size,
  Color? color,
  int? maxLines,
  TextAlign? textAlign,
  FontWeight? fontWeight,
  String? fontFamily,
  TextDecoration? decoration,
  TextOverflow? overFlow,
  double? wordSpacing,
  double? letterSpacing,
  TextDecorationStyle? decorationStyle,
  Color? decorationColor,
}) {
  return Text(
    text ?? '',
    maxLines: maxLines,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: size,
      color: color ?? AppColor.black,
      fontWeight: fontWeight,
      decoration: decoration,
      fontFamily: fontFamily ?? GoogleFonts.urbanist().fontFamily,
      decorationColor: decorationColor,
      overflow: overFlow,
      wordSpacing: wordSpacing,
      letterSpacing: letterSpacing,
      decorationStyle: decorationStyle,
    ),
  );
}

Widget customButton({
  double? height,
  double? width,
  Color? color,
  BorderRadius? borderRadius,
  String? name,
  Function()? onTap,
  double? fontSize,
  Color? textColor = AppColor.white,
  Color borderColor = AppColor.appPrimary,
  bool isLoading = false,
  String? icon,
  FontWeight? fontWeight,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: height,
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        color: color ?? AppColor.appPrimary,
        borderRadius: borderRadius ?? BorderRadius.circular(10),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: Center(
        child: isLoading
            ? const CupertinoActivityIndicator(
                color: AppColor.white,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) SvgPicture.string(icon),
                  if (icon != null) SizedBox(width: 10),
                  customText(
                    text: name ?? 'Continue',
                    size: fontSize,
                    color: textColor,
                    fontWeight: fontWeight,
                    letterSpacing: 1,
                  ),
                ],
              ),
      ),
    ),
  );
}

Widget buildCommonTextFormField({
  bool expands = false,
  Color borderColor = Colors.black12,
  required Color bgColor,
  required String hintText,
  Color hintTextColor = AppColor.hintTextColor,
  Widget? prefixIcon,
  Color color = AppColor.black,
  required TextInputType keyboardType,
  required TextInputAction textInputAction,
  String? Function(String?)? validator,
  int? maxLength,
  required TextEditingController? controller,
  List<TextInputFormatter>? inputFormatters,
  EdgeInsetsGeometry? contentPadding = const EdgeInsets.only(
    left: 30,
    top: 18,
    bottom: 18,
    right: 10,
  ),
  bool obscureText = false,
  Widget? suffixIcon,
  void Function()? onTap,
  bool enabled = true,
  bool readOnly = false,
  double radius = 10,
  int? minLine,
  int? maxLine,
  FocusNode? focusNode,
  void Function(String)? onChanged,
  required BuildContext context,
  bool isFromPhoneText = false,
}) {
  return TextFormField(
    inputFormatters: inputFormatters,
    onChanged: onChanged,
    onTapOutside: (event) => FocusScope.of(context).unfocus(),
    onTap: onTap,
    textAlignVertical: TextAlignVertical.top,
    style: TextStyle(
      fontFamily: GoogleFonts.urbanist().fontFamily,
      color: color,
      fontSize: 14,
    ),
    expands: expands,
    keyboardType: keyboardType,
    obscureText: obscureText,
    textInputAction: textInputAction,
    enabled: enabled,
    focusNode: focusNode,
    decoration: InputDecoration(
      prefixIcon: prefixIcon,
      counterText: '',
      contentPadding: contentPadding,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: isFromPhoneText
            ? BorderSide.none
            : BorderSide(
                color: borderColor,
              ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: isFromPhoneText
            ? BorderSide.none
            : BorderSide(
                color: borderColor,
              ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: isFromPhoneText
            ? BorderSide.none
            : BorderSide(
                color: borderColor,
              ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: isFromPhoneText
            ? BorderSide.none
            : const BorderSide(
                color: Color(0x26000000),
              ),
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      suffixIcon: suffixIcon,
      fillColor: bgColor,
      filled: true,
      labelText: hintText,
      labelStyle: TextStyle(
        color: hintTextColor,
        fontWeight: FontWeight.w300,
        fontFamily: GoogleFonts.urbanist().fontFamily,
        fontSize: 14,
      ),
    ),
    validator: validator,
    maxLength: maxLength,
    controller: controller,
    readOnly: readOnly,
    minLines: minLine,
    maxLines: maxLine,
  );
}

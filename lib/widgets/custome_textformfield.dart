import 'package:flutter/material.dart';
import 'package:tquicker/static_variable/theme_and_color.dart';

import '../size_config.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(customWidth(0.025)),
          borderSide:
              const BorderSide(color: ThemeAndColor.themeColor, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(customWidth(0.025)),
          borderSide:
              const BorderSide(color: ThemeAndColor.themeColor, width: 1.5),
        ),
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.headline3!.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
        fillColor: ThemeAndColor.buttonBGColor,
        filled: true,
      ),
    );
  }
}
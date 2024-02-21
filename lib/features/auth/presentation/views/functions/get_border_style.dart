import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

OutlineInputBorder getBorderStyle() {
  return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(color: AppColors.grey, width: 1));
}

import 'package:dalel/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
        child: Text(text,
            style: AppStyles.poppins600Style24
                .copyWith(color: const Color(0xff333333))));
  }
}

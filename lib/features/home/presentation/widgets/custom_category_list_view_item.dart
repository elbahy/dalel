import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomCategoryListViewItem extends StatelessWidget {
  const CustomCategoryListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 133,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: AppColors.grey, blurRadius: 5, offset: Offset(0, 2.5))
          ]),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(5), topRight: Radius.circular(5)),
              child:
                  Image.asset(Assets.assetsImagesSalah, height: 96, width: 74)),
          const SizedBox(height: 10),
          const Text(
            'Saladin',
            style: AppStyles.poppins500Style14,
          )
        ],
      ),
    );
  }
}

import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_text_header.dart';
import 'package:dalel/features/home/presentation/widgets/custom_category_list_view.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirsSection extends StatelessWidget {
  const HistoricalSouvenirsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextHeader(text: AppStrings.historicalSouvenirs),
        SizedBox(height: 16),
        CustomCategoryListView(),
      ],
    );
  }
}

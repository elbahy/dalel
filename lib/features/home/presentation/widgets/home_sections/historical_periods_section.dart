import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_text_header.dart';
import 'package:dalel/features/home/presentation/widgets/custom_period_list_view.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodsSection extends StatelessWidget {
  const HistoricalPeriodsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextHeader(text: AppStrings.historicalPeriods),
        SizedBox(height: 16),
        CustomPeriodListView(),
        SizedBox(height: 32),
      ],
    );
  }
}

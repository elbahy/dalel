import 'package:dalel/core/widgets/custom_data_list_view.dart';
import 'package:dalel/core/widgets/custom_text_header.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:flutter/material.dart';

class HistoricalPeriodView extends StatelessWidget {
  const HistoricalPeriodView({super.key, required this.model});

  final HistoricalPeriodsModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
          child: Column(
        children: [
          CustomTextHeader(text: model.name),
          CustomDataListView(dataList: model.wars, routePath: 'routePath'),
        ],
      )),
    ));
  }
}

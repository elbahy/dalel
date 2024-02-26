import 'package:dalel/features/home/presentation/views/widgets/custom_period_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomPeriodListView extends StatelessWidget {
  const CustomPeriodListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          itemBuilder: (context, index) {
            return const CustomPeriodListViewItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 16);
          },
          itemCount: 5),
    );
  }
}

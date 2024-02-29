import 'package:dalel/core/models/data_list_model.dart';
import 'package:dalel/core/widgets/custom_data_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomDataListView extends StatelessWidget {
  const CustomDataListView({
    super.key,
    required this.dataList,
    required this.routePath,
  });

  final List<DataListModel> dataList;
  final String routePath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 96,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          itemBuilder: (context, index) {
            return CustomDataListViewItem(
              model: dataList[index],
              routePath: routePath,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(width: 16);
          },
          itemCount: dataList.length),
    );
  }
}

import 'package:dalel/core/models/data_list_model.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomDataListViewItem extends StatelessWidget {
  const CustomDataListViewItem({
    super.key,
    required this.model,
  });

  final DataListModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      width: 164,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: AppColors.grey, blurRadius: 5, offset: Offset(0, 2.5))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 63,
            height: 48,
            child: Text(
              model.name,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: AppStyles.poppins500Style14.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            width: 47,
            height: 64,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(model.imageUrl),
                )),
          )
        ],
      ),
    );
  }
}

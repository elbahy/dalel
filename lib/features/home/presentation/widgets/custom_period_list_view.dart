import 'package:dalel/features/home/presentation/cubit/home_cubit.dart';
import 'package:dalel/features/home/presentation/cubit/home_state.dart';
import 'package:dalel/features/home/presentation/widgets/custom_period_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomPeriodListView extends StatelessWidget {
  const CustomPeriodListView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = BlocProvider.of<HomeCubit>(context);
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          height: 96,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              clipBehavior: Clip.none,
              itemBuilder: (context, index) {
                return CustomPeriodListViewItem(
                  model: homeCubit.historicalPeriods[index],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
              itemCount: homeCubit.historicalPeriods.length),
        );
      },
    );
  }
}

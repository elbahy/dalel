import 'package:dalel/core/widgets/custom_data_list_view.dart';
import 'package:dalel/features/home/presentation/cubit/home_cubit.dart';
import 'package:dalel/features/home/presentation/cubit/home_state.dart';
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
        return CustomDataListView(
          dataList: homeCubit.historicalPeriodsList,
          routePath: '/historicalPeriodsView',
        );
      },
    );
  }
}

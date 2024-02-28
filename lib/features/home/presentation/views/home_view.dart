import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_text_header.dart';
import 'package:dalel/features/home/presentation/widgets/custom_category_list_view.dart';
import 'package:dalel/features/home/presentation/widgets/custom_period_list_view.dart';
import 'package:dalel/features/home/presentation/widgets/home_custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: CustomScrollView(slivers: [
          //! Home AppBar Section
          SliverToBoxAdapter(child: SizedBox(height: 28)),
          SliverToBoxAdapter(child: HomeCustomAppBar()),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          //! Historical Periods Section
          SliverToBoxAdapter(
              child: CustomTextHeader(text: AppStrings.historicalPeriods)),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(child: CustomPeriodListView()),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          //! Historical Characters Section
          SliverToBoxAdapter(
              child: CustomTextHeader(text: AppStrings.historicalCharacters)),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: CustomCategoryListView(),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 32)),
          //! Historical Souvenirs Section
          SliverToBoxAdapter(
              child: CustomTextHeader(text: AppStrings.historicalSouvenirs)),
          SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: CustomCategoryListView(),
          )
        ]),
      ),
    );
  }
}

import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_styles.dart';
import 'package:dalel/core/widgets/custom_data_list_view.dart';
import 'package:dalel/core/widgets/custom_text_header.dart';
import 'package:dalel/features/home/data/models/historical_periods_model.dart';
import 'package:dalel/features/home/presentation/widgets/custom_category_list_view.dart';
import 'package:dalel/features/home/presentation/widgets/home_sections/home_app_bar_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistoricalPeriodView extends StatelessWidget {
  const HistoricalPeriodView({super.key, required this.model});

  final HistoricalPeriodsModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: HomeAppBarSection()),
            SliverToBoxAdapter(
                child: Row(
              children: [
                CustomTextHeader(text: 'About ${model.name}'),
                const SizedBox(width: 7),
                SvgPicture.network(model.logoUrl,
                    height: 28, width: 41, color: const Color(0xffE8DAD6)),
              ],
            )),
            const SliverToBoxAdapter(child: SizedBox(height: 47)),
            SliverToBoxAdapter(
                child: Stack(clipBehavior: Clip.none, children: [
              Positioned(
                  top: -30,
                  left: -15,
                  child: SvgPicture.network(model.bgUrl,
                      width: 145, height: 145, color: const Color(0xffE8DAD6))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 220,
                      width: 215,
                      child: Text(model.description,
                          style: AppStyles.poppins500Style14
                              .copyWith(color: Colors.black, height: 1.5))),
                  const SizedBox(width: 16),
                  Image.network(model.imageUrl, width: 131, height: 203)
                ],
              ),
            ])),
            const SliverToBoxAdapter(child: SizedBox(height: 22)),
            SliverToBoxAdapter(
                child:
                    CustomTextHeader(text: '${model.name} ${AppStrings.wars}')),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
                child: CustomDataListView(
                    dataList: model.wars, routePath: '/WarsView')),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            const SliverToBoxAdapter(
                child: CustomTextHeader(text: AppStrings.recommendations)),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            const SliverToBoxAdapter(
              child: CustomCategoryListView(),
            )
          ],
        ),
      ),
    ));
  }
}

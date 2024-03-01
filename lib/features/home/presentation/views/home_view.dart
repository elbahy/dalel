import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/features/home/presentation/widgets/home_sections/historical_characters_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_sections/historical_periods_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_sections/historical_souvenirs_section.dart';
import 'package:dalel/features/home/presentation/widgets/home_sections/home_app_bar_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            customNavigate(context, '/chat');
          },
          child: const Icon(Icons.chat)),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: CustomScrollView(slivers: [
          //! Home AppBar Section
          SliverToBoxAdapter(child: HomeAppBarSection()),
          //! Historical Periods Section
          SliverToBoxAdapter(child: HistoricalPeriodsSection()),
          //! Historical Characters Section
          SliverToBoxAdapter(child: HistoricalCharactersSection()),
          //! Historical Souvenirs Section
          SliverToBoxAdapter(child: HistoricalSouvenirsSection())
        ]),
      ),
    );
  }
}

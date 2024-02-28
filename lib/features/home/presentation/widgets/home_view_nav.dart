import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/features/cart/presentation/views/cart_view.dart';
import 'package:dalel/features/home/presentation/cubit/home_cubit.dart';
import 'package:dalel/features/home/presentation/views/home_view.dart';
import 'package:dalel/features/profile/presentation/views/profile_view.dart';
import 'package:dalel/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewNav extends StatefulWidget {
  const HomeViewNav({super.key});

  @override
  State<HomeViewNav> createState() => _HomeViewNavState();
}

class _HomeViewNavState extends State<HomeViewNav> {
  int selectedIndex = 0;
  final List<Widget> _pages = [
    BlocProvider(
      create: (context) => HomeCubit()..getHistoricalPeriods(),
      child: const HomeView(),
    ),
    const CartView(),
    const SearchView(),
    const ProfileView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages.elementAt(selectedIndex),
        bottomNavigationBar: Container(
          height: 79,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                  activeIcon: Icon(Icons.home_filled)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined),
                  label: 'Cart',
                  activeIcon: Icon(Icons.shopping_cart)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined),
                  label: 'Search',
                  activeIcon: Icon(Icons.search)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline),
                  label: 'Profile',
                  activeIcon: Icon(Icons.person)),
            ],
            backgroundColor: AppColors.primaryColor,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            selectedItemColor: AppColors.deepBrown,
            unselectedItemColor: AppColors.navBarIconColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 24,
          ),
        ));
  }
}

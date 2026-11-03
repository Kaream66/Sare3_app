import 'package:flutter/material.dart';
import 'package:sare3_app/core/utils/app_colors.dart';
import 'package:sare3_app/core/widgets/cart_widget.dart';
import 'package:sare3_app/features/home/widgets/categories_list_view.dart';
import 'package:sare3_app/features/home/widgets/home_search_bar.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        title: CartWidget(),
      ),
      body: Column(
        children: [
          HomeSearchBar(),
          CategoriesListView(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sare3_app/core/utils/text_styles.dart';
import 'package:sare3_app/features/home/models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, this.categoryModel});

  final CategoryModel? categoryModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CategoryWidget(
                ontap: () {},
                image: 'assets/images/pharmcy_logo.png',
                title: 'الصيدليات',
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CategoryWidget(
                ontap: () {},
                image: 'assets/images/market_logo.png',
                title: 'الكشك',
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CategoryWidget(
                ontap: () {},
                image: 'assets/images/shopping_logo.png',
                title: 'السوق',
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CategoryWidget(
                ontap: () {},
                image: 'assets/images/food_logo.png',
                title: 'المطاعم',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.ontap, required this.image, required this.title});
  final VoidCallback ontap;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffEFF2FF),
          borderRadius: BorderRadius.circular(18),
          boxShadow: [BoxShadow(color: Colors.black, blurRadius: 8, offset: const Offset(0, 2))],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Text(title, style: TextStyles.bold14),
            ),
          ],
        ),
      ),
    );
  }
}

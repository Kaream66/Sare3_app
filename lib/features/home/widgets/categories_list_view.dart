import 'package:flutter/material.dart';
import 'package:sare3_app/core/utils/text_styles.dart';
import 'package:sare3_app/features/home/models/category_model.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key, this.categoryModel, this.categories});

  final CategoryModel? categoryModel;
  final List<CategoryModel>? categories;

  static final List<CategoryModel> defaultCategories = [
    CategoryModel(
      name: Text('الصيدلية', style: TextStyles.bold14),
      image: 'assets/images/pharmcy_logo.png',
    ),
    CategoryModel(
      name: Text('الكشك', style: TextStyles.bold14),
      image: 'assets/images/shopping_logo.png',
    ),
    CategoryModel(
      name: Text('السوق', style: TextStyles.bold14),
      image: 'assets/images/market_logo.png',
    ),
    CategoryModel(
      name: Text('مطاعم', style: TextStyles.bold14),
      image: 'assets/images/food_logo.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final items = categories ?? (categoryModel != null ? [categoryModel!] : defaultCategories);

    return SizedBox(
      height: 110,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final category = items[index];

          return Container(
            width: 88,
            decoration: BoxDecoration(
              color: Color(0xffEFF2FF),
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(color: Colors.black, blurRadius: 8, offset: const Offset(0, 2)),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(category.image, fit: BoxFit.cover),
                  ),
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 6), child: category.name),
              ],
            ),
          );
        },
      ),
    );
  }
}

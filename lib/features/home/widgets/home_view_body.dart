import 'package:flutter/material.dart';
import 'package:sare3_app/core/helpers/routes.dart';
import 'package:sare3_app/core/utils/app_colors.dart';
import 'package:sare3_app/core/utils/text_styles.dart';
import 'package:sare3_app/core/widgets/cart_widget.dart';
import 'package:sare3_app/features/home/views/offers_view.dart';
import 'package:sare3_app/features/home/widgets/categories_list_view.dart';
import 'package:sare3_app/features/home/widgets/home_search_bar.dart';
import 'package:sare3_app/features/home/widgets/offer_widget.dart';

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
        actions: [
          Row(
            children: [
              Icon(Icons.keyboard_arrow_down, color: Colors.white),
              TextButton(
                onPressed: () {},
                child: Text(
                  'منشأة القناطر , شارع الجمهورية',
                  style: TextStyles.bold16.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeSearchBar(),
            SizedBox(height: 20),
            CategoriesListView(),

            SizedBox(height: 50),
            OfferWidget(),
            SizedBox(height: 40),

            Container(
              height: 70,
              width: double.maxFinite,
              decoration: BoxDecoration(color: AppColors.primaryColor),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, Routes.offersPageRouate);
                      },
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(color: Color(0xff8293FF)),
                        child: Icon(Icons.arrow_back_ios_new_rounded, color: Color(0xffFFFFFF)),
                      ),
                    ),
                    Spacer(),
                    Text('عروض سريع', style: TextStyles.bold22.copyWith(color: Colors.white)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            OffersView(),
            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Icon(Icons.shopping_cart),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffFCFCFC),
        items: [
          BottomNavigationBarItem(
            label: 'Your Profile',

            icon: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 229, 236),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Chats',

            icon: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 229, 236),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chat_bubble),
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Your Cart',

            icon: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 229, 236),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Home',

            icon: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 227, 229, 236),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home_sharp),
                  color: AppColors.primaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

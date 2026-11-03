import 'package:flutter/material.dart';
import 'package:sare3_app/core/utils/app_colors.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.shopping_bag_outlined, size: 20, color: AppColors.primaryColor),
        ),
        Positioned(
          bottom: -5,
          left: -5,
          child: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.white, width: 2),
              color: AppColors.primaryColor,
              shape: BoxShape.rectangle,
            ),
            child: Text(
              '5',
              style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

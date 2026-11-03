import 'package:flutter/material.dart';
import 'package:sare3_app/core/utils/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.ontap, required this.color});
  final String text;
  final Color color;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
        child: Center(child: Text(text, style: TextStyles.meduim16)),
      ),
    );
  }
}

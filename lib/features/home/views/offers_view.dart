import 'package:flutter/material.dart';
import 'package:sare3_app/core/utils/text_styles.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('نجمة الجلاتمة', style: TextStyles.bold16),
                        Text(' علبة جامبو', style: TextStyles.regular14),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Image.asset('assets/images/discount_image.png', width: 150),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

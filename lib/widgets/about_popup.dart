import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class AboutPopup extends StatelessWidget {
  const AboutPopup({super.key});

  @override
  Widget build(BuildContext context) {


    // popup to display details about developer


    return AlertDialog(
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: secondaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const CustomText(
            text: 'Close',
            fontSize: 14,
            color: whiteColor,
          )
        )
        
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: const CustomText(
        text: 'About',
        fontSize: 24,
        color: whiteColor,
        fontWeight: FontWeight.w700,
      ),
      content: CustomText(
        text: 'This app was developed by \nAlbin Anilkumar\nalbinanilkumar003@gmail.com',
        fontSize: 16,
        color: fadedWhite,
        fontWeight: FontWeight.w400,
      ),
      backgroundColor: primaryColor,
    );
  }
}
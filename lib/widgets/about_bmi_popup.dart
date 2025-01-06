import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class AboutBmiPopup extends StatelessWidget {
  const AboutBmiPopup({super.key});

  @override
  Widget build(BuildContext context) {


    // popup to display details about bmi calculation


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
        text: 'Calculating BMI',
        fontSize: 24,
        color: whiteColor,
        fontWeight: FontWeight.w700,
      ),
      content: CustomText(
        text: 'BMI (Body Mass Index) was calculated by dividing weight in kilograms by height in meter.\n\nBMI Categories:\n\nLess than 18.5 - Underweight\n\nBetween 18.5 and 24.9 - Normal Weight\n\nBetween 25 and 29.9 - Overweight\n\n30 or more - Obesity',
        fontSize: 16,
        color: fadedWhite,
        fontWeight: FontWeight.w400,
      ),
      backgroundColor: primaryColor,
    );
  }
}
import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/widgets/about_bmi_popup.dart';
import 'package:bmi_calculator/widgets/about_popup.dart';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  // method to display popup
  void aboutBmiPopupShow (BuildContext ctx){
    showDialog(
      context: ctx,
      builder: (ctx) {
        return const AboutBmiPopup();
      }
    );
  }

  // method to display popup
  void aboutPopupShow(BuildContext ctx){
    showDialog(
      context: ctx,
      builder: (ctx) {
        return const AboutPopup();
      }
    );
  }
  @override
  Widget build(BuildContext context) {


    // side bar widget


    return SidebarX(

      // header with title wrritten in a container
      headerBuilder: (context, extended) {
        return Container(
          height: 120,
          width: 280,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20)
            ),
            color: primaryColor,
          ),
          child: const Center(
            child: CustomText(
              text: 'BMI Calculator',
              fontSize: 25,
              color: whiteColor,
            ),
          ),
        );
      },

      // defining styles of sidebar
      theme: SidebarXTheme(
        width: 280,
        selectedIconTheme: const IconThemeData(
          color: whiteColor
        ),
        selectedTextStyle: GoogleFonts.poppins(
          fontSize: 16,
          color: whiteColor
        ),
        textStyle: GoogleFonts.poppins(
          fontSize: 16,
          color: whiteColor,
        ),
        iconTheme: const IconThemeData(
          color: whiteColor,
        ),
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(20),
        )
      ),
      controller: SidebarXController(
        selectedIndex: 0,
        extended: true,
      ),

      // widgets inside sidebar
      items:  [
        SidebarXItem(
          icon: Icons.monitor_weight_outlined,
          label: '     How BMI is calculated?',
          onTap: (){
            aboutBmiPopupShow(context);
          }
        ),
        SidebarXItem(
          icon: Icons.info_outline,
          label: '     About Developer',
          onTap: (){
            aboutPopupShow(context);
          }
        )
      ]
    );
  }
}
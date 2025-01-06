import 'package:bmi_calculator/constants/colors.dart';
import 'package:bmi_calculator/widgets/custom_text.dart';
import 'package:bmi_calculator/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {

  // initialising variables

  int initialHeight = 150;
  int initialWeight = 80;
  int initialAge = 30;
  double bmiResult = 0;
  String resultText = 'Set your details and calculate.';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  calculateResultText(){
    
    if (bmiResult < 18.5) {
      return 'You are underweight!';
    } else if (bmiResult>=18.5 && bmiResult<24.9){
      return 'You have normal weight!';
    } else if (bmiResult>=24.9 && bmiResult<29.9){
      return'You are overweight!';
    } else if (bmiResult>=29.9){
      return'You are obese!';
    } 

  }


  double calculateBmi (){
    double heightInMeter = initialHeight/100;
    double bmi = initialWeight/(heightInMeter*heightInMeter);
    return bmi;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const SideBar(),
      backgroundColor: primaryColor,

      // app bar
      appBar: AppBar(
        backgroundColor: secondaryColor,
        title: const CustomText(
          text: 'BMI Calculator',
          color: whiteColor,
          fontSize: 24,
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.dehaze,
            color: whiteColor,
          ),
          onPressed: (){
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),

      // body
      // main column
      body: Column(
        children: [
          
          // first container for height input
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Height',
                    fontSize: 22,
                    color: fadedWhite,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 30,
                        child: IconButton(
                          icon: const Icon(
                            Icons.remove,
                            color: whiteColor,
                          ),
                          onPressed: (){
                            if(initialHeight>50){
                              setState(() {
                                initialHeight-=1;
                              });
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 30),
                      CustomText(
                        text: initialHeight.toString(),
                        fontSize: 60,
                        fontWeight: FontWeight.w800,
                        color: whiteColor,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          SizedBox(height: 25,),
                          CustomText(
                            text: 'cm',
                            fontSize: 22,
                            color: whiteColor,
                          ),
                          
                        ],
                      ),
                      const SizedBox(width: 30,),
                       CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 30,
                        child: IconButton(
                          icon: const Icon(
                            Icons.add,
                            color: whiteColor,
                          ),
                          onPressed: (){
                            if(initialHeight<250){
                              setState(() {
                                initialHeight += 1;
                              });
                            }
                          },
                        ),
                      )
                    ],
                  ),
                 
                ],
              ),
            ),
          ),
          

          // two containers aligned in row for weight and age input
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 165,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Weight',
                    fontSize: 22,
                    color: fadedWhite,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: initialWeight.toString(),
                        fontSize: 60,
                        fontWeight: FontWeight.w800,
                        color: whiteColor,
                      ),
                      const SizedBox(width: 10),
                      const Column(
                        children: [
                          SizedBox(height: 25,),
                          CustomText(
                            text: 'kg',
                            fontSize: 22,
                            color: whiteColor,
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 30,
                        child: IconButton(
                          icon: const Icon(
                            Icons.remove,
                            color: whiteColor,
                          ),
                          onPressed: (){
                            if(initialWeight>20){
                              setState(() {
                                initialWeight-=1;
                              });
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 25),
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 30,
                        child: IconButton(
                          icon: const Icon(
                            Icons.add,
                            color: whiteColor,
                          ),
                          onPressed: (){
                            if(initialWeight<500){
                              setState(() {
                                initialWeight+=1;
                              });
                            }
                          },
                        ),
                      )
                    ]
                  )        
                ],
              ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 200,
                width: 165,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'Age',
                    fontSize: 22,
                    color: fadedWhite,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: initialAge.toString(),
                        fontSize: 60,
                        fontWeight: FontWeight.w800,
                        color: whiteColor,
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 30,
                        child: IconButton(
                          icon: const Icon(
                            Icons.remove,
                            color: whiteColor,
                          ),
                          onPressed: (){
                            if(initialAge>1){
                              setState(() {
                                initialAge-=1;
                              });
                            }
                          },
                        ),
                      ),
                      const SizedBox(width: 25),
                      CircleAvatar(
                        backgroundColor: primaryColor,
                        radius: 30,
                        child: IconButton(
                          icon: const Icon(
                            Icons.add,
                            color: whiteColor,
                          ),
                          onPressed: (){
                            if(initialAge<100){
                              setState(() {
                                initialAge+=1;
                              });
                            }
                          },
                        ),
                      )
                    ]
                  )                 
                ],
              ),
                ),
              ),
            ],
          ),


          // container for displaying result
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
            ),
            child: Container(
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: secondaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: 'BMI Result',
                    fontSize: 22,
                    color: fadedWhite,
                  ),
                  CustomText(
                    text: bmiResult.toStringAsFixed(2),
                    fontSize: 60,
                    fontWeight: FontWeight.w800,
                    color: whiteColor,
                  ),
                  CustomText(
                    text: resultText,
                    color: whiteColor,
                    fontSize:16,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 10,),


          // button to trigger calculation
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(335, 65),
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )
            ),
            onPressed: () {
              setState(() {
                bmiResult = calculateBmi();
                resultText = calculateResultText();
              });
            },
            child: const CustomText(
              text: 'Calculate',
              fontSize: 25,
              color: whiteColor,
            )
          )
        ],
      ),
    );
  }
}
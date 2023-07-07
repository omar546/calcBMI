import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiResScreen extends StatelessWidget {
  final double result;
  final bool isMale;
  final int age;
  final String status;
 final Color STATEcolor;
  BmiResScreen({
    Key? key,
    required this.age,
    required this.result,
    required this.isMale,
    required this.STATEcolor,
    required this.status,
  }) : super(key: key);

  Color myBlackColor = const Color(0xFF070606);
  Color myWhiteColor = const Color(0xFFFFFDFA);
  Color myLightGreyColor = const Color(0xFFE0E0E0);
  Color myDarkGreyColor = const Color(0xFF212121);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: myBlackColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: myBlackColor,
        elevation: 0.0,
        titleSpacing: 20.0,
        centerTitle: true,
        title: Text(
          'RESULT',
          style: TextStyle(
            color: myWhiteColor,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: CircleAvatar(
            radius: 15.0,
            backgroundColor: myLightGreyColor,
            child: const Icon(
              Icons.arrow_left_rounded,
              color: CupertinoColors.activeBlue,
              size: 30.0,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
    color: myDarkGreyColor,

    border: Border.all(
            color: Colors.deepOrange,
    width: 2.0,),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "GENDER: ${isMale ? 'Male' : 'Female'}",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: myWhiteColor,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                "AGE: $age",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: myWhiteColor,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                "BMI:",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: myWhiteColor,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                "${result.toStringAsFixed(2)}",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: STATEcolor,
                ),
              ),
              SizedBox(height: 15.0),

              Text(
                "Status:",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: myWhiteColor,
                ),
              ),
              SizedBox(height: 15.0),

              Text(
                status,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: STATEcolor,
                ),
              ),
            ],
          ),
        ),
      ),
    );


  }
}

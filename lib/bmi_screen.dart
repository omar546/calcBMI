import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi_res_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  bool isMale = true;
  double height = 170.0;
  int weight = 50;
  int age = 20;
  Color myBlackColor = const Color(0xFF070606);
  Color myWhiteColor = const Color(0xFFFFFDFA);
  Color myLightGreyColor = const Color(0xFFE0E0E0);
  Color myDarkGreyColor = const Color(0xFF212121);
  double bmi = 0.0;
  Color STATEcolor = Colors.transparent;
  String status = "";

  double calculateBMI() {
    if (isMale) {
      bmi = (weight) / ((height / 100) * (height / 100));
    } else {
      bmi = (weight) / ((height / 100) * (height / 100));
    }
    return bmi;
  }

  String calcStatus(double bmi) {
    if (bmi < 18.5) {
      status = "Underweight";
    } else if (bmi >= 18.5 && bmi < 25.0) {
      status = "Normal Weight";
    } else if (bmi >= 25.0 && bmi < 30.0) {
      status = "Overweight";
    } else {
      status = "Obesity";
    }
    return status;
  }

  Color calcStatusColor(String status) {
    if (status == "Underweight") {
      STATEcolor = Colors.blue;
    } else if (status == "Normal Weight") {
      STATEcolor = Colors.greenAccent;
    } else if (status == "Overweight") {
      STATEcolor = Colors.orange;
    } else {
      STATEcolor = Colors.red;
    }
    return STATEcolor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myBlackColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: myBlackColor,
        elevation: 0.0,
        titleSpacing: 20.0,
        leadingWidth: 0.0,
        title: Center(
          child: Text(
            'BMI Calculator',
            style: TextStyle(
              color: myWhiteColor,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: isMale ? myLightGreyColor : myDarkGreyColor,
                        ),
                        child: Transform.scale(
                          scale: 0.8,
                          child: const Image(
                            image: AssetImage('images/MALE.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: isMale ? myDarkGreyColor : myLightGreyColor,
                        ),
                        child: Transform.scale(
                          scale: 0.8,
                          child: const Image(
                            image: AssetImage('images/FEMALE.png'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: myDarkGreyColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: myWhiteColor,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: myWhiteColor,
                          ),
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: myWhiteColor,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: height,
                      max: 250,
                      min: 50,
                      activeColor: Colors.deepOrange,
                      inactiveColor: myBlackColor,
                      onChanged: (value) {
                        setState(() {
                          height = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: myDarkGreyColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: myWhiteColor,
                            ),
                          ),
                          Text(
                            '$age',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: myWhiteColor,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "age-",
                                backgroundColor: myLightGreyColor,
                                onPressed: () {
                                  setState(() {
                                    if(age>=1){
                                    age--;}
                                  });
                                },
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                  color: CupertinoColors.activeBlue,
                                ),
                              ),
                              FloatingActionButton(
                                heroTag: "age+",
                                backgroundColor: myLightGreyColor,
                                onPressed: () {
                                  setState(() {
                                    if(age<=200){
                                    age++;}
                                  });
                                },
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: myDarkGreyColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: myWhiteColor,
                            ),
                          ),
                          Text(
                            '$weight',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w900,
                              color: myWhiteColor,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                heroTag: "weight-",
                                backgroundColor: myLightGreyColor,
                                onPressed: () {
                                  setState(() {
                                    if(weight>=0){
                                    weight--;}
                                  });
                                },
                                mini: true,
                                child: const Icon(
                                  Icons.remove,
                                  color: CupertinoColors.activeBlue,
                                ),
                              ),
                              FloatingActionButton(
                                heroTag: "weight+",
                                backgroundColor: myLightGreyColor,
                                onPressed: () {
                                  setState(() {
                                    if(weight<=300){


                                    weight++;}
                                  });
                                },
                                mini: true,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(30),
            ),
            child: MaterialButton(
              onPressed: () {
                double bmiResult = calculateBMI();
                String statusResult = calcStatus(bmiResult);
                Color colorResult = calcStatusColor(statusResult);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BmiResScreen(
                      result: bmiResult,
                      age: age,
                      isMale: isMale,
                      status: statusResult,
                      STATEcolor: colorResult,
                    ),
                  ),
                );
              },
              height: 50,
              child: const Text(
                'CALCULATE!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

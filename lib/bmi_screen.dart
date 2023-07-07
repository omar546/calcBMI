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
   int age =20;
   Color myBlackColor = const Color(0xFF070606);
   Color myWhiteColor = const Color(0xFFFFFDFA);
   Color myLightGreyColor = const Color(0xFFE0E0E0);
   Color myDarkGreyColor = const Color(0xFF212121);

   double calculateBMI() {
     double bmi;

     if (isMale) {
       bmi = (66 + (13.75 * weight) + (5 * height) - (6.75 * age)) / 10000;
     } else {
       bmi = (655 + (9.56 * weight) + (1.85 * height) - (4.68 * age)) / 10000;
     }

     return double.parse(bmi.toStringAsFixed(2));
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
                      onTap: (){
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0,),
                          color: isMale ? myLightGreyColor : myDarkGreyColor,
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform.scale(scale: 0.8,
                                child: const Image(image: AssetImage('images/MALE.png'),)),
                            // const SizedBox(
                            //   height: 15,
                            // ),
                            Text(
                              'MALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: isMale ? myBlackColor : myWhiteColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0,),
                          color: isMale ? myDarkGreyColor : myLightGreyColor,
                        ),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Transform.scale(scale: 0.8,
                                child: const Image(image: AssetImage('images/FEMALE.png'),)),
                            // const SizedBox(
                            //   height: 15,
                            // ),
                            Text(
                              'FEMALE',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: isMale ? myWhiteColor : myBlackColor,
                              ),
                            ),
                          ],
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
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0,),
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
                        max: 220,
                        min: 80,
                        activeColor: Colors.deepOrange,
                        inactiveColor: myBlackColor,
                        onChanged:(value){
                          setState(() {
                            height = value;
                          });
                    } ),
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
                        borderRadius: BorderRadius.circular(30.0,),
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

                                onPressed: (){
                                  setState(() {
                                    age--;
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
                                onPressed: (){
                                  setState(() {
                                    age++;
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
                  const SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0,),
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

                                 onPressed: (){
                                   setState(() {
                                     weight--;
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
                                 onPressed: (){
                                   setState(() {
                                     weight++;
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
                onPressed: (){
                  Navigator. push(context, MaterialPageRoute(builder: (context) => BmiResScreen(
                    result: calculateBMI(),
                    age: age,
                    isMale: isMale,
                  )));
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

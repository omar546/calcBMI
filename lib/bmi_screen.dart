import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({Key? key}) : super(key: key);
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
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
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
                        color: myDarkGreyColor,
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                           Icons.connecting_airports_sharp,
                            size: 70,
                            color: myWhiteColor,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: myWhiteColor,
                            ),
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
                        borderRadius: BorderRadius.circular(10.0,),
                        color: myDarkGreyColor,
                      ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                           Icons.connecting_airports_sharp,
                            size: 70,
                            color: myWhiteColor,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: myWhiteColor,
                            ),
                          ),
                        ],
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
                  borderRadius: BorderRadius.circular(10.0,),
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
                          '180',
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
                    Slider(value: 150,max: 220,min: 80,activeColor: myLightGreyColor,inactiveColor: myBlackColor, onChanged:(value){
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
                        borderRadius: BorderRadius.circular(10.0,),
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
                            '180',
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
                                backgroundColor: myLightGreyColor,

                                onPressed: (){},
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                  color: myBlackColor,

                                ),
                              ),
                              FloatingActionButton(
                                backgroundColor: myLightGreyColor,
                                onPressed: (){},
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                  color: myBlackColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20.0,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0,),
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
                            '180',
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
                                 backgroundColor: myLightGreyColor,

                                 onPressed: (){},
                                 mini: true,
                               child: Icon(
                                 Icons.remove,
                                 color: myBlackColor,

                               ),
                               ),
                               FloatingActionButton(
                                 backgroundColor: myLightGreyColor,
                                 onPressed: (){},
                                 mini: true,
                               child: Icon(
                                 Icons.add,
                                 color: myBlackColor,
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
                onPressed: (){},
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

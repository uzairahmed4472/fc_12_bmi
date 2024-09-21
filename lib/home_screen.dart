// ignore_for_file: prefer_const_constructors

import 'package:fc_12_bmi/constants.dart';
import 'package:fc_12_bmi/result_screen.dart';
import 'package:fc_12_bmi/utility.dart';
import 'package:fc_12_bmi/widgets/reusable_card.dart';
import 'package:fc_12_bmi/widgets/reusable_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  BMIFunction BMIObject = BMIFunction();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.),
        title: Center(
          child: Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        
                      BMIObject.selectGender(Gender.male);
                      });
                    },
                    child: ReusableContainer(
                      colour: BMIObject.color1,
                      childContainer: ReusableCard(
                        text: "MALE",
                        icon: Icons.male,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        
                      BMIObject.selectGender(Gender.female);
                      });
                    },
                    child: ReusableContainer(
                      colour: BMIObject.color2,
                      childContainer: ReusableCard(
                        text: "FEMALE",
                        icon: Icons.female,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: ReusableContainer(
              colour: kActiveColor,
              childContainer: Column(
                children: [
                  Text("HEIGHT"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "${BMIObject.height}",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text("cm")
                    ],
                  ),
                  Slider(
                    min: 140,
                    max: 200,
                    thumbColor: Colors.pink,
                    activeColor: Colors.red,
                    inactiveColor: Colors.white,
                    value: BMIObject.height.toDouble(),
                    onChanged: (newValue) {
                      setState(() {
                        BMIObject.height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    colour: kActiveColor,
                    childContainer: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT'),
                        Text('${BMIObject.weight}'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RawMaterialButton(
                              fillColor: Colors.grey,
                              onPressed: () {
                                BMIObject.onDecrement(1);
                              },
                              shape: CircleBorder(),
                              constraints: BoxConstraints(
                                minWidth: 45,
                                minHeight: 45,
                                maxHeight: 50,
                                maxWidth: 50,
                              ),
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawMaterialButton(
                              fillColor: Colors.grey,
                              onPressed: () {
                                BMIObject.onIncrement(1);
                              },
                              shape: CircleBorder(),
                              constraints: BoxConstraints(
                                minWidth: 45,
                                minHeight: 45,
                                maxHeight: 50,
                                maxWidth: 50,
                              ),
                              child: Icon(Icons.add),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    colour: kActiveColor,
                    childContainer: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE'),
                        Text('${BMIObject.age}'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            RawMaterialButton(
                              fillColor: Colors.grey,
                              onPressed: () {
                                BMIObject.onDecrement(2);
                              },
                              shape: CircleBorder(),
                              constraints: BoxConstraints(
                                minWidth: 45,
                                minHeight: 45,
                                maxHeight: 50,
                                maxWidth: 50,
                              ),
                              child: Icon(Icons.remove),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RawMaterialButton(
                              fillColor: Colors.grey,
                              onPressed: () {
                                BMIObject.onIncrement(2);
                              },
                              shape: CircleBorder(),
                              constraints: BoxConstraints(
                                minWidth: 45,
                                minHeight: 45,
                                maxHeight: 50,
                                maxWidth: 50,
                              ),
                              child: Icon(Icons.add),
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
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultScreen(
                        weight: BMIObject.weight,
                        height: BMIObject.height,
                      );
                    },
                  ),
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.pink,
                child: Center(
                  child: Text("CALCULATE BMI"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:fc_12_bmi/widgets/reusable_card.dart';
import 'package:fc_12_bmi/widgets/reusable_container.dart';
import 'package:flutter/material.dart';

const kTextStyle1 = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
int height = 150;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    childContainer: ReusableCard(
                      text: "MALE",
                      icon: Icons.male,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    childContainer: ReusableCard(
                      text: "FEMALE",
                      icon: Icons.female,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(
              childContainer: Column(
                children: [
                  Text("HEIGHT"),
                  Text("$height CM"),
                  Slider(
                    min: 140,
                    max: 200,
                    thumbColor: Colors.pink,
                    activeColor: Colors.red,
                    inactiveColor: Colors.white,
                    value: height.toDouble(),
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    childContainer: Text('data'),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    childContainer: Row(
                      children: [
                        Container(
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500)),
                          child: IconButton(
                            color: Colors.red,
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                            ),
                          ),
                        ), Container(
                          width: 10,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500)),
                          child: IconButton(
                            color: Colors.red,
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

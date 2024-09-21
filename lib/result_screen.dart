import 'package:fc_12_bmi/home_screen.dart';
import 'package:fc_12_bmi/widgets/reusable_container.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({super.key, required this.weight, required this.height});
  final int weight;
  final int height;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  String bmiMessage() {
    double bmi = calculateBMI();
    if (bmi < 18.5) {
      return "You have a SMALL body weight. Go EAT some Food!";
    } else if (bmi >= 18.5 && bmi <= 25) {
      return "You have a NORMAL body weight. Good job!";
    } else {
      return "You have a OBESE body weight. DO some dieting!";
    }
  }
  
  calculateBMI() {
    int w = widget.weight;
    int h = widget.height;
    double bmi = w / ((h / 100) * (h / 100));
    return bmi;
  }

  @override
  void initState() {
    calculateBMI();
    super.initState();
  }

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(8),
            child: Text(
              'Result',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueAccent,
              ),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("NORMAL"),
                  Text("${calculateBMI()}"),
                  Text("Normal BMI Range:"),
                  Text("18.5 - 25 kg/m2"),
                  Text(bmiMessage().toString()),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                color: Colors.pink,
                child: Center(
                  child: Text("RECALCULATE"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




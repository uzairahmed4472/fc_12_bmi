import 'package:fc_12_bmi/constants.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class BMIFunction {
  int height = 150;
  int weight = 50;
  int age = 20;

  Color color1 = kInactiveColor;
  Color color2 = kInactiveColor;

  selectGender(Gender gender) {
    if (gender == Gender.male) {
      color1 = kActiveColor;
      color2 = kInactiveColor;
    }
    if (gender == Gender.female) {
      color2 = kActiveColor;
      color1 = kInactiveColor;
    }
  }

  onIncrement(int buttonType) {
    if (buttonType == 1) {
      weight++;
    }
    if (buttonType == 2) {
      age++;
    }
  }

  onDecrement(int buttonType) {
    if (buttonType == 1) {
      weight--;
    }
    if (buttonType == 2) {
      age--;
    }
  }
}

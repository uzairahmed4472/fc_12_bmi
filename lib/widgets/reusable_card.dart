import 'package:fc_12_bmi/home_screen.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
   required this.icon ,required this.text
  });
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80,
        ),
        Text(
          text,
          style: kTextStyle1,
        )
      ],
    );
  }
}



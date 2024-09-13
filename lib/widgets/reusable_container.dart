import 'package:flutter/material.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    super.key,
    required this.childContainer,
  });
  final Widget childContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.green, //Color(0xFF1D1F33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: childContainer,
    );
  }
}
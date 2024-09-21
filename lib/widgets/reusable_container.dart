import 'package:flutter/material.dart';

class ReusableContainer extends StatefulWidget {
  const ReusableContainer({
    super.key,
    required this.childContainer, required this.colour
  });
  final Widget childContainer;
  final Color colour;

  @override
  State<ReusableContainer> createState() => _ReusableContainerState();
}

class _ReusableContainerState extends State<ReusableContainer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: widget.colour, //Color(0xFF1D1F33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget.childContainer,
    );
  }
}

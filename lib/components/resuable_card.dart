import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({required this.colour, required this.cardChild, this.onPressed});
  final Color colour;
  final Widget cardChild;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}

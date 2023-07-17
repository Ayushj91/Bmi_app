import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final void Function()? onpress;
  const ReusableCard({
    super.key,
    this.cardChild,
    required this.color,
    this.onpress
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: onpress,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}

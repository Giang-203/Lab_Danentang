import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({
    required this.colour,
    this.cardChild,
    this.onPress,
  });

  final Color colour;
  final Widget? cardChild; // Có thể null
  final VoidCallback? onPress; // Có thể null

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ?? () {}, // Nếu `onPress` là null, không làm gì
      child: Container(
        child: cardChild ?? SizedBox.shrink(), // Nếu `cardChild` là null, hiển thị widget trống
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    required this.icon,
    this.onPressed,
  });

  final IconData icon; // Bắt buộc
  final VoidCallback? onPressed; // Có thể null

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon), // Sử dụng icon, không cần kiểm tra null do required
      onPressed: onPressed, // Nếu không truyền, mặc định là null
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
    this.heightButton = 40,
    this.widthButton = double.infinity,
    this.titleSize = 16,
  });
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double widthButton;
  final double heightButton;
  final double titleSize;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widthButton,
      height: heightButton,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: Colors.white, fontSize: titleSize)),
        style: ElevatedButton.styleFrom(backgroundColor: color),
      ),
    );
  }
}

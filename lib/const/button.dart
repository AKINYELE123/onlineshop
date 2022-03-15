import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color color;
  String? text;
  final Color background;
  double size;
  final Color borderColor;


  AppButton(
      {Key? key,
        this.text,
        required this.size,
        required this.color,
        required this.background,
        required this.borderColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.0),
        borderRadius: BorderRadius.circular(30),
        color: background,
      ),
      child: Center(child: Text(text!, style: TextStyle(
        fontSize: 14,
        color: color,
        fontWeight: FontWeight.bold
      ),),
      )
    );
  }
}

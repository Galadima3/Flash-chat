// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final color;
  final String title;
  final VoidCallback? onPressed;
  const RoundedButton({
    Key? key,
    this.color,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(title, style: TextStyle(color: Colors.white,)),
        ),
      ),
    );
  }
}

// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class dbButton extends StatelessWidget {
  dbButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  final String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 2,
      onPressed: onPressed,
      color: Colors.yellow[500],
      child: Text(text),
    );
  }
}

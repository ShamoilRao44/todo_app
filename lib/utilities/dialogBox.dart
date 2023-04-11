// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo_app/utilities/dbButtons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        // padding: EdgeInsets.all(8),
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.yellow,
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                hintText: "Enter new task",
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save button
                dbButton(onPressed: onSave, text: "Save"),

                SizedBox(
                  width: 8,
                ),

                //  cancel button
                dbButton(onPressed: onCancel, text: 'Cancel')
              ],
            ),
          ],
        ),
      ),
    );
  }
}

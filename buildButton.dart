import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget buildButton(String text, VoidCallback onPressed) {
  return Container(
    width: 250,
    height: 60,
    margin: EdgeInsets.all(30),
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF05DD88), // Button background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ), // Set border radius for rounded corners
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.black), // Set text color to black
      ),
    ),
  );
}

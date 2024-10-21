import 'package:flutter/material.dart';

TextStyle labelStyle = const TextStyle(color: Colors.black);

Color white = Colors.white;
Color orange = Colors.orange;
Color grey = Colors.grey;
Color black = Colors.black;

Widget divider = Divider(
  height: 1,
  color: grey,
);

Widget smallHeight = const SizedBox(
  height: 5,
);
Widget mediumHeight = const SizedBox(
  height: 10,
);
Widget largeHeight = const SizedBox(
  height: 15,
);
Widget extraLargeHeight = const SizedBox(
  height: 20,
);

InputDecoration textfieldStyle = InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5), // Curved border radius
    borderSide: BorderSide(
      color: Colors.grey, // Border color when not focused
      width: 1.0, // Border width
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5), // Curved border radius when focused
    borderSide: BorderSide(
      color: Colors.orange, // Border color when focused
      width: 1.0, // Border width
    ),
  ),
  errorBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5), // Curved border radius when focused
    borderSide: BorderSide(
      color: Colors.orange, // Border color when focused
      width: 1.0, // Border width
    ),
  ),
);

ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
  side: BorderSide(color: Colors.orange, width: 2.0), // Orange border color
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10), // Rounded border radius
  ),

  foregroundColor: Colors.orange, // Text color (orange)
);
ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: Colors.orange, // Orange background color
  foregroundColor: Colors.white, // White text color
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5), // Rounded border radius of 5
  ),
);

import 'package:flutter/material.dart';

class CustomSnackbar {
  static snackbar(BuildContext context, String message, Color color) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color,
      action: SnackBarAction(
        label: "Tutup",
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
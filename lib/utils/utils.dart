import 'package:flutter/material.dart';

// for displaying snackbars
showSnackBar(String content, BuildContext context context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content),
    ),
  );
}

import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: Theme.of(context).canvasColor,
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        showCloseIcon: true,
        closeIconColor: Theme.of(context).primaryColor,
        content: Text(
          text,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
}

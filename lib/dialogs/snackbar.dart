import 'package:flutter/material.dart';

void openSnacbar(scaffoldKey, snacMessage) {
  scaffoldKey.currentState.showSnackBar(SnackBar(
    duration: const Duration(seconds: 1),
    content: Container(
      alignment: Alignment.centerLeft,
      height: 60,
      child: Text(
        snacMessage,
        style: const TextStyle(
          fontSize: 14,
        ),
      ),
    ),
    action: SnackBarAction(
      label: 'Ok',
      textColor: Colors.blueAccent,
      onPressed: () {},
    ),
  ));
}

import 'dart:math';

import 'package:flutter/material.dart';

class HomeController {
  final _random = Random();
  int count = 0;
  Color? randomColor() {
    var newColor = Colors.primaries[_random.nextInt(Colors.primaries.length)]
        [_random.nextInt(9) * 100];
    return newColor ?? Colors.white;
  }

  int counter() {
    return count++;
  }

  showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          title: Text('Hello from Brazil.'),
        );
      },
    );
  }
}

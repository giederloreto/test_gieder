import 'dart:math';

import 'package:flutter/material.dart';

class HomeController {
  final _random = Random();
  Color newColor = Colors.yellow;

  Color? randomColor() {
    var newColor = Colors.primaries[_random.nextInt(Colors.primaries.length)]
        [_random.nextInt(9) * 100];

    return newColor;
  }
}

import 'package:flutter/material.dart';
import 'package:test_gieder/view/home_view.dart';

class GiederAppTest extends StatelessWidget {
  const GiederAppTest({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomeView(),
    );
  }
}

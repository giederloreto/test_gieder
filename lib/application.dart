import 'package:flutter/material.dart';
import 'package:test_gieder/view/home_view.dart';

class GiederApp extends StatelessWidget {
  const GiederApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
    );
  }
}

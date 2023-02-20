import 'package:flutter/material.dart';
import 'package:test_gieder/controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _homeController = HomeController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => setState(() {})),
      child: Scaffold(
        backgroundColor: _homeController.randomColor(),
        body: const Center(
          child: Text(
            'Hey there',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}

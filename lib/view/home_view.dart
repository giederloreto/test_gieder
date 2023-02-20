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
      onTap: (() {
        _homeController.count > 0 && _homeController.count % 3 == 0
            ? _homeController.showAlertDialog(context)
            : Container();
        setState(() {
          _homeController.counter();
        });
      }),
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

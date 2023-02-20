import 'package:flutter/material.dart';
import 'package:test_gieder/controller/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _homeController = HomeController();

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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        if (_homeController.count > 0 && _homeController.count % 2 == 0) {
          showAlertDialog(context);
        }
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

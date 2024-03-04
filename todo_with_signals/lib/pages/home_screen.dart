// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'counter_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("home")),
        body: ListView(children: [
          _NavItem(label: "Counter", screen: CounterPage(title: "counter"))
        ]));
  }
}

class _NavItem extends StatelessWidget {
  final String label;
  final Widget screen;
  _NavItem({required this.label, required this.screen});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => screen));
        },
        child: Text(label));
  }
}

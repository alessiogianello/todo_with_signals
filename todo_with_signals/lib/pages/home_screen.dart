// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'counter_screen.dart';
import 'todo_screen.dart';
import 'http.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("home")),
        body: ListView(children: [
          _NavItem(label: "Counter", screen: CounterPage()),
          _NavItem(label: "To Do", screen: todo_screen()),
          _NavItem(label: "Http", screen: HttpScreen())
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

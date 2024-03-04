import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String label;
  final Widget screen;
  _NavItem({required this.label, required this.screen});
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

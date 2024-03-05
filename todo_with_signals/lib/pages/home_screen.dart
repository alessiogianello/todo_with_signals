// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_with_signals/main.dart';
import 'counter_screen.dart';
import 'todo_screen.dart';
import 'http.dart';
import 'package:provider/provider.dart';
import 'binary_counter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("home")),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () {
            context.read<CartProvider>().changeCartCount(newCartCount: 0);
          },
        ),
        body: ListView(children: [
          _NavItem(label: "Counter", screen: CounterPage()),
          _NavItem(label: "To Do", screen: todo_screen()),
          _NavItem(label: "Http", screen: HttpScreen()),
          _NavItem(
              label: "Binary counter with Provider",
              screen: BinaryCounterPage()),
          Center(child: Text("Prodotti nel carrello: ")),
          Center(
              child: Text(context.watch<CartProvider>().cartCount.toString()))
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

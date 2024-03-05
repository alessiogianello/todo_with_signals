// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signals/signals_flutter.dart';
import 'package:todo_with_signals/main.dart';

class BinaryCounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Binary counter"),
        ),
        body: Stack(children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    "You have pushed the button ${context.watch<CartProvider>().cartCount} times:"),
              ],
            ),
          ),
          Positioned(
            bottom: 70,
            right: 20,
            child: ElevatedButton(
              child: Icon(Icons.add),
              onPressed: () {
                context
                    .read<CartProvider>()
                    .incrementCartCount(increment: true);
              },
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              child: Icon(Icons.remove),
              onPressed: () {
                context
                    .read<CartProvider>()
                    .incrementCartCount(increment: false);
              },
            ),
          ),
        ]));
  }
}

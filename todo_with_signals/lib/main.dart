import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CartProvider())],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home:
              HomeScreen() //const CounterPage(title: 'Flutter Demo Home Page'),
          ),
    );
  }
}

class CartProvider extends ChangeNotifier {
  int cartCount;

  CartProvider({this.cartCount = 0});

  void changeCartCount({required int newCartCount}) async {
    cartCount = newCartCount;
    notifyListeners();
  }

  void incrementCartCount({required bool increment}) async {
    if (increment) {
      cartCount++;
    } else {
      cartCount--;
    }
    notifyListeners();
  }
}

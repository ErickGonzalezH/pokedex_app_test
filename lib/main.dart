import 'package:flutter/material.dart';
import 'package:pokedex_app_test/screens/details.dart';
import 'package:pokedex_app_test/screens/home_screen.dart';
import 'package:pokedex_app_test/screens/splash.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      //Debug banner
      debugShowCheckedModeBanner: false,

      //Name of app
      title: 'Pokedex',

      //global theme
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),

      initialRoute: "/",

      routes: {
        "/": (context) => const SplashScreen(),
        "/home": (context) => const Home(),
        "/details": (context) => const Details(),
      },
    );
  }
}

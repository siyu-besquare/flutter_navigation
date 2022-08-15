import 'package:flutter/material.dart';
import 'package:navigation_exercise/shades_with_params.dart';

import 'home_page.dart';
import 'slider_page.dart';

void main() => runApp(MaterialApp(
      home: Home(),
      routes: {
        '/shades': (context) => ShadesWithParams(),
        // '/sliderPage': (context) => colorSlider(),
      },
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

import 'package:flutter/material.dart';
import 'package:navigation_exercise/shades_page.dart';
import 'package:navigation_exercise/slider_page.dart';

import 'list_item.dart';

class MyHomePage extends StatelessWidget {
  void navigateToShades(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return ShadesPage(color: Colors.accents.elementAt(index));
        },
      ),
    );
  }

  void navigateToShadePageStatic(
      BuildContext context, MaterialAccentColor color) {
    Navigator.pushNamed(
      context,
      '/shades',
      arguments: color,
    );
  }

  void navigateToSliderPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return colorSlider();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colours'),
      ),
      body: ListView.builder(
          itemCount: Colors.accents.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                navigateToShadePageStatic(
                    context, Colors.accents.elementAt(index));
              },
              child: ListItem(color: Colors.accents.elementAt(index)),
            );
          }),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          onPressed: () {
            navigateToSliderPage(context);
          },
          child: Text('RGB')),
    );
  }
}

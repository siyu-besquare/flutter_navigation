import 'package:flutter/material.dart';

import 'list_item.dart';

class ShadesPage extends StatelessWidget {
  final MaterialAccentColor color;
  // final int index;

  List<String> colorSelection = [
    "Red",
    "Pink",
    "Purple",
    "Deep Purple",
    "Indigo",
    "Blue",
    "Light Blue",
    "Cyan",
    "Teal",
    "Green",
    "Light Green",
    "Lime",
    "Yellow",
    "Amber",
    "Orange",
    "Deep Orange",
  ];

  late final List<Color> accentShades;

  ShadesPage({required this.color});

  @override
  Widget build(BuildContext context) {
    final List<Color> accentShades = [
      color.shade100,
      color.shade200,
      color.shade400,
      color.shade700
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Shade'),
        backgroundColor: color,
      ),
      body: ListView.builder(
        itemCount: accentShades.length,
        itemBuilder: (BuildContext context, int index) {
          return ListItem(color: accentShades[index]);
        },
      ),
    );
  }
}

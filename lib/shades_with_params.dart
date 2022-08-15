import 'package:flutter/material.dart';

import 'shades_page.dart';

class ShadesWithParams extends StatelessWidget {
  const ShadesWithParams({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as MaterialAccentColor;
    return ShadesPage(
      color: data,
      // index: 1,
    );
  }
}

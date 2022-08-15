import 'package:flutter/material.dart';

class colorSlider extends StatefulWidget {
  const colorSlider({Key? key}) : super(key: key);

  @override
  State<colorSlider> createState() => _colorSliderState();
}

class _colorSliderState extends State<colorSlider> {
  int red_value = 0;
  int blue_value = 0;
  int green_value = 0;

  void onPanStart(DragStartDetails details) {
    print('User started drawing');
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.globalPosition);
    print(point);
  }

  void onPanUpdate(DragUpdateDetails details) {
    final box = context.findRenderObject() as RenderBox;
    final point = box.globalToLocal(details.globalPosition);
    print(point);
  }

  void onPanEnd(DragEndDetails details) {
    print('User ended drawing');
  }

  @override
  Widget build(BuildContext context) {
    Color c = Color.fromRGBO(red_value, green_value, blue_value, 1.0);
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose colour'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Slider(
            value: red_value.toDouble(),
            min: 0.0,
            max: 255.0,
            activeColor: Colors.red,
            inactiveColor: Colors.grey,
            label: 'Set R value',
            onChanged: (double newValue) {
              setState(() {
                red_value = newValue.toInt();
              });
            },
          ),
          Slider(
            value: green_value.toDouble(),
            min: 0.0,
            max: 255.0,
            activeColor: Colors.green,
            inactiveColor: Colors.grey,
            label: 'Set G value',
            onChanged: (double newValue) {
              setState(() {
                green_value = newValue.toInt();
              });
            },
          ),
          Slider(
            value: blue_value.toDouble(),
            min: 0.0,
            max: 255.0,
            activeColor: Colors.blue,
            inactiveColor: Colors.grey,
            label: 'Set B value',
            onChanged: (double newValue) {
              setState(() {
                blue_value = newValue.toInt();
              });
            },
          ),
          Center(
            child: Column(children: [
              CircleAvatar(
                radius: 75,
                backgroundColor: c,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(actions: [
                        const Text('You have selected this colour:'),
                        Container(
                          color: c,
                          width: 10,
                          height: 10,
                        )
                      ]);
                    },
                  );
                },
                child: Text("Submit"),
              )
            ]),
          ),
          // CustomPaint(
          //     child: Container(
          //       color: Colors.yellow,
          //       height: 50,
          //       width: 50,
          //     ),
          //     painter: MyPainter()),
          GestureDetector(
            onPanStart: onPanStart,
            onPanUpdate: onPanUpdate,
            onPanEnd: onPanEnd,
            child: RepaintBoundary(
              child: Container(
                color: Colors.transparent,
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height,
                // CustomPaint widget will go here
              ),
            ),
          ),
        ],
      ),
    );
  }
}

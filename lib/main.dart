import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGestureDetector(),
    );
  }
}

class MyGestureDetector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Handle tap gesture
        showGestureText(context, 'Tapped!');
      },
      onDoubleTap: () {
        // Handle double tap gesture
        showGestureText(context, 'Double Tapped!');
      },
      onLongPress: () {
        // Handle long press gesture
        showGestureText(context, 'Long Pressed!');
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Gesture ',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Text(
            'Tap, Double Tap, or Long Press to see gestures!',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }

  void showGestureText(BuildContext context, String gesture) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(gesture),
      ),
    );
  }
}

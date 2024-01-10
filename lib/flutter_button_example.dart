import 'package:flutter/material.dart';

class FlutterButtonExample extends StatefulWidget {
  const FlutterButtonExample({Key? key}) : super(key: key);

  @override
  State<FlutterButtonExample> createState() => _FlutterButtonExampleState();
}

class _FlutterButtonExampleState extends State<FlutterButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(onPressed: () {}, child: Text('Outline Button'))
            /*ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    textStyle: TextStyle(color: Colors.white)),
                onPressed: () {},
                child: Text('Elevated Button')),*/
          ],
        ),
      ),
    );
  }
}

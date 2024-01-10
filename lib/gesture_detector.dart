
import 'package:flutter/material.dart';

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({Key? key}) : super(key: key);

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gesture Example'),),
      body: Center(
        child: GestureDetector(
          
          onTap: (){
            print('---------clicked');
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.blue,
             borderRadius: BorderRadius.circular(8)
            ),
            child: Text('Press Here'),
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class CircleAvatarExample extends StatefulWidget {
  const CircleAvatarExample({Key? key}) : super(key: key);

  @override
  State<CircleAvatarExample> createState() => _CircleAvatarExampleState();
}

class _CircleAvatarExampleState extends State<CircleAvatarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Circle Avatar Example"),),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://img.freepik.com/free-photo/beautiful-summer-flowers-meadow-colorful-floral-background_90220-1510.jpg',),
          ),
        ),
      ),
    );
  }
}

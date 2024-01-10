
import 'package:flutter/material.dart';

class NetworkImageExample extends StatefulWidget {
  const NetworkImageExample({Key? key}) : super(key: key);

  @override
  State<NetworkImageExample> createState() => _NetworkImageExampleState();
}

class _NetworkImageExampleState extends State<NetworkImageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Network Image Example"),),
      body: Center(
        child: Image.network('https://img.freepik.com/free-photo/beautiful-summer-flowers-meadow-colorful-floral-background_90220-1510.jpg',),
      ),
    );
  }
}

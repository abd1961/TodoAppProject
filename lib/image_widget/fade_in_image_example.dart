
import 'package:flutter/material.dart';

class FadeInImageExample extends StatefulWidget {
  const FadeInImageExample({Key? key}) : super(key: key);

  @override
  State<FadeInImageExample> createState() => _FadeInImageExampleState();
}

class _FadeInImageExampleState extends State<FadeInImageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fade In Image Example"),),
      body: Center(
        child: FadeInImage.assetNetwork(
          placeholder: 'assets/flower.jpg',
          image: 'https://img.freepik.com/free-photo/beautiful-summer-flowers-meadow-colorful-floral-background_90220-1510.jpg',
          height: 300,width: 300,),
      ),
    );
  }
}

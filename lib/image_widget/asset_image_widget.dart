
import 'package:flutter/material.dart';

class AssetImageExample extends StatefulWidget {
  const AssetImageExample({Key? key}) : super(key: key);

  @override
  State<AssetImageExample> createState() => _AssetImageExampleState();
}

class _AssetImageExampleState extends State<AssetImageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Asset Image Example"),),
      body: Center(
        child: Image.asset('assets/flower.jpg',height: 100,width: 100,colorBlendMode: BlendMode.colorBurn,),
      ),
    );
  }
}

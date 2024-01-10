import 'package:flutter/material.dart';

class IconExample extends StatelessWidget {
  const IconExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Example')),
      body: Center(
        child: Icon(Icons.add_a_photo_outlined,size: 30,color: Colors.green,),
      ),
    );
  }
}

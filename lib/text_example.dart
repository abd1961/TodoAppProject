
import 'package:flutter/material.dart';

class TextExample extends StatefulWidget {
  const TextExample({Key? key}) : super(key: key);

  @override
  State<TextExample> createState() => _TextExampleState();
}

class _TextExampleState extends State<TextExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Example'),),

      body: Center(
        child: Text('In publishing and graphic design, Lorem ipsum is a placeholder ',
          textAlign: TextAlign.center,
         // maxLines: 1
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

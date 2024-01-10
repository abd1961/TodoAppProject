import 'package:flutter/material.dart';

class TextFieldExample extends StatefulWidget {
  const TextFieldExample({Key? key}) : super(key: key);

  @override
  State<TextFieldExample> createState() => _TextFieldExampleState();
}

class _TextFieldExampleState extends State<TextFieldExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TextField Example"),),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            keyboardType: TextInputType.phone,

            onChanged: (value){
              print('userinput: ${value}');
            },
            decoration: InputDecoration(
                hintText: 'Enter your name',
                label: Text('Name'),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4)
                ),

            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({Key? key}) : super(key: key);

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {

  bool isChecked = false;
  bool isLitTileCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox List Tile"),),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(value: isChecked, onChanged: (value){
              setState(() {
                isChecked = value!;
              });
            }),
            SizedBox(height: 20),
            CheckboxListTile(
              title: Text("are you hungry?"),
              value: isLitTileCheck, onChanged: (value){
              setState(() {
                isLitTileCheck = value!;
              });
            })
          ],
        ),
      ),
    );
  }
}

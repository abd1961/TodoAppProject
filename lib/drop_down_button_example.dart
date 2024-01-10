import 'package:flutter/material.dart';

class DropDownButtonExample extends StatefulWidget {
  const DropDownButtonExample({Key? key}) : super(key: key);

  @override
  State<DropDownButtonExample> createState() => _DropDownButtonExampleState();
}

class _DropDownButtonExampleState extends State<DropDownButtonExample> {
  String selectedValue = 'Item1';

  List<String> list = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
    'Item5',
    'Item6',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Button Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded( // Wrap DropdownButton with Expanded
              child: DropdownButton<String>(
                value: selectedValue,
                items: list.map((String e) {
                  return DropdownMenuItem(value: e, child: Text(e.toString()));
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedValue = value.toString();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
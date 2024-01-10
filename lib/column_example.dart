
import 'package:flutter/material.dart';

class ColumnExample extends StatefulWidget {
  const ColumnExample({Key? key}) : super(key: key);

  @override
  State<ColumnExample> createState() => _ColumnExampleState();
}

class _ColumnExampleState extends State<ColumnExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Column Example'),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue,
               borderRadius: BorderRadius.circular(8)
              ),
              child: Text('Column1'),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Text('Column2'),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Text('Column3'),
            ),
          ],
        ),
      ),
    );
  }
}

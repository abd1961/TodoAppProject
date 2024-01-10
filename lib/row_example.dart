
import 'package:flutter/material.dart';

class RowExample extends StatefulWidget {
  const RowExample({Key? key}) : super(key: key);

  @override
  State<RowExample> createState() => _RowExampleState();
}

class _RowExampleState extends State<RowExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Row Example'),),
      body: Center(
        child: Row(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue,
               borderRadius: BorderRadius.circular(8)
              ),
              child: Text('Row1'),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Text('Row3'),
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Text('Row2'),
            ),
          ],
        ),
      ),
    );
  }
}

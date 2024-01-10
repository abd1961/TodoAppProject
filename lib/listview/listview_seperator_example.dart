import 'package:flutter/material.dart';

class ListViewSeparatorExample extends StatefulWidget {
  const ListViewSeparatorExample({Key? key}) : super(key: key);

  @override
  State<ListViewSeparatorExample> createState() => _ListViewSeparatorExampleState();
}

class _ListViewSeparatorExampleState extends State<ListViewSeparatorExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.8),
      appBar: AppBar(
        title: Text('ListView Seperator Example'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(10),
          itemCount: 20,
          separatorBuilder: (context,index){
            return SizedBox(height: 10,);
          },
          itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Text('ListItem $index'),
            );
          }
      ),
    );
  }
}

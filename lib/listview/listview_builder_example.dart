import 'package:flutter/material.dart';

class ListViewBuilderExample extends StatefulWidget {
  const ListViewBuilderExample({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderExample> createState() => _ListViewBuilderExampleState();
}

class _ListViewBuilderExampleState extends State<ListViewBuilderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.2),
      appBar: AppBar(
        title: Text('ListView Builder Example'),
      ),
      body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context,index){
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(12),
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


import 'package:flutter/material.dart';

class InkWellExample extends StatelessWidget {
  const InkWellExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inkwell Example'),),
      body: Center(
        child: InkWell(
          onTap: (){
            final snackbar = SnackBar(
                content: Text('Test Snackbar'),
              duration: Duration(seconds: 6),
              action: SnackBarAction(label: 'Undo', onPressed: (){
                print('undo button clicked');
              }),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.green
            ),
            child: Text('click here'),
          ),
        ),
      ),
    );
  }
}

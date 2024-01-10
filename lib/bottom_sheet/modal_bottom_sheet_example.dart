import 'package:flutter/material.dart';

class ModalBottomSheetExample extends StatefulWidget {
  const ModalBottomSheetExample({Key? key}) : super(key: key);

  @override
  State<ModalBottomSheetExample> createState() => _ModalBottomSheetExampleState();
}

class _ModalBottomSheetExampleState extends State<ModalBottomSheetExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet Example'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              isDismissible: false,
                enableDrag: true,
                context: context,
                builder: (context){
              return SizedBox(
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Bottom Sheet')
                    ],
                  ),
                ),
              );
            });

          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}

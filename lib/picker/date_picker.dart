import 'package:flutter/material.dart';

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({Key? key}) : super(key: key);

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {

  String pickedDate = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Date Picker Example'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: ()async{
                 DateTime? pickerDate =  await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100)
                  );

                 if(pickerDate!=null){
                   setState(() {
                     pickedDate = pickerDate.toString();
                   });
                 }
                },
                child: Text('Pick Date')),
            SizedBox(height: 20,),
            Text('Picker Date: $pickedDate')
          ],
        ),
      ),
    );
  }
}

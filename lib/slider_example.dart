import 'package:flutter/material.dart';

class SliderExample extends StatefulWidget {
  const SliderExample({Key? key}) : super(key: key);

  @override
  State<SliderExample> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderExample> {


  double selectedValue = 30;

  double first = 20;
  double last = 30;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              max: 100,
                min: 10,
                value: selectedValue,
                onChanged: (value){
              setState(() {
                selectedValue = value;
              });
            }),
            SizedBox(height: 20,),
            Text('Selected Value: ${selectedValue}'),
            SizedBox(height: 20,),
            RangeSlider(
              max: 100,
                min: 10,
                values: RangeValues(first, last),
                onChanged: (RangeValues value){
                setState(() {

                  first = value.start;
                  last = value.end;

                });
                }),
            SizedBox(height: 20,),
            Text('Start Value: $first -- End Value: $last',style: TextStyle(fontSize: 10),textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }
}

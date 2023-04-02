import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  String dropdownvalue = 'Register As';
  var items = [
    'Register As',
    'Resturant Owner',
    'Charity',
    'Occasional Donar',
    'Admin',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
        border: Border.all(
          
        width: 5,

    ),
          borderRadius: BorderRadius.circular(45)
        ),
        height:75,
        width:250,


        child: Center(
          child: DropdownButton(

            // Initial Value
            value: dropdownvalue,


            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
        ),
      );

  }
}

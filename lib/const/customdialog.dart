import 'package:flutter/material.dart';

CustomDialog(context ){
  String? _selectedItem;

  List<String> _dropdownItems = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
  ];
  return showDialog(context: context, builder:(BuildContext context){
    return AlertDialog(
      actions: [
        Center(
          child: DropdownButton<String>(

            alignment: Alignment.center,
             value: _selectedItem,
             items: _dropdownItems.map((String item) {
               return DropdownMenuItem<String>(
                 value: item,
                 child: Text(_selectedItem??""),
                 alignment: Alignment.center,
               );
             }).toList(),
             onChanged: (value) {
               (() {
                 _selectedItem = value;
               });
             },
           ),
        )
      ],
    );
  } );
}
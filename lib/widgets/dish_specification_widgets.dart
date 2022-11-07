import 'package:digitalq/widgets/specification_widgets.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget dishSpecificationRow1(){
  return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      child: Text("Dish Specification", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Colors.grey, fontWeight: FontWeight.bold),));
}

Widget dishSpecificationTable(){
  return Table(
    columnWidths: const {
      0: FlexColumnWidth(2),
      1: FlexColumnWidth(2),
      2: FlexColumnWidth(3)
    },
    border: TableBorder.all(
        color: Colors.black,
        style: BorderStyle.solid,
        width: 2),
    children: [
      TableRow(
          decoration: BoxDecoration(
            color: mainGreen,
          ),
          children: [
            greenContainer(text: "Number"),
            greenContainer(text: "Specification\nCode"),
            greenContainer(text: "Specification"),
          ]
      ),
      dishSpecificationTableRow("101", "T", "Name"),
      dishSpecificationTableRow("102", "C", "Price"),
      dishSpecificationTableRow("103", "S", "Sugar %"),
      dishSpecificationTableRow("104", "P", "Protein %"),
      dishSpecificationTableRow("105", "", "Photo"),
      dishSpecificationTableRow("106", "", ""),
      dishSpecificationTableRow("107", "", ""),
      dishSpecificationTableRow("108", "", ""),
      dishSpecificationTableRow("109", "", ""),

    ],
  );
}

TableRow dishSpecificationTableRow(String text1, String text2, String text3){
  return TableRow(
      children: [
        tableLabelField(label: text1),
        tableInputfield(value: text2),
        tableInputfield(value:text3),
      ]
  );
}
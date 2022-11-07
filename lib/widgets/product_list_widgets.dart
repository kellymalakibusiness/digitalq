import 'package:digitalq/widgets/specification_widgets.dart';
import 'package:flutter/material.dart';
import '../constants/colors.dart';

Widget productListRow1(){
  return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      child: Text("Product List", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Colors.grey, fontWeight: FontWeight.bold),));
}

Widget tableImagefield({required String? value}){
  if(value != null){
    return Center(
      child: Row(
        children: [
          const SizedBox(width: 5,),
          const Icon(Icons.camera_alt, color: Colors.black,),
          const SizedBox(width: 5,),
          Container(
              height: 40,
              width: 40,
              child: Image.asset(value))
        ],
      ),
    );
  }else{
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
          children: [
            const SizedBox(width: 5,),
            const Icon(Icons.camera_alt, color: Colors.black,),
            const SizedBox(width: 5,),
            Expanded(child: Container())
          ],
        ),
    );
  }
}

TableRow productListTableRow(String text1, String text2, String text3, String? text4, String text5, String text6){
  return TableRow(
      children: [
        tableLabelField(label: text1),
        tableInputfield(value: text2),
        tableInputfield(value:text3),
        tableImagefield(value: text4),
        tableInputfield(value:text5),
        tableInputfield(value:text6),
      ]
  );
}

Widget productListTable(){
  return Table(
    columnWidths: const {
      0: FlexColumnWidth(1),
      1: FlexColumnWidth(1),
      2: FlexColumnWidth(3),
      3: FlexColumnWidth(3),
      4: FlexColumnWidth(3),
      5: FlexColumnWidth(3)
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
            greenContainer(text: "Product Code"),
            greenContainer(text: "Name"),
            greenContainer(text: "Photo"),
            greenContainer(text: "Price"),
            greenContainer(text: "Specification"),
          ]
      ),
      productListTableRow("1", "T", "Ice cream", "assets/temp_image.jpg", "2", ""),
      productListTableRow("2", "C", "Tea", null, "", ""),
      productListTableRow("3", "S", "coffee", null, "", ""),
      productListTableRow("4", "P", "egg", null, "", ""),
      productListTableRow("5", "", "", null, "", ""),
      productListTableRow("6", "", "", null, "", ""),
      productListTableRow("7", "", "", null, "", ""),
      productListTableRow("8", "", "", null, "", ""),
      productListTableRow("9", "", "", null, "", ""),
      productListTableRow("10", "", "", null, "", ""),

    ],
  );
}
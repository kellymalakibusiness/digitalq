import 'package:digitalq/widgets/specification_widgets.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

Widget dishListRow1(){
  return Padding(
      padding: const EdgeInsets.only(top:10, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Text("Dish List", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Colors.grey, fontWeight: FontWeight.bold),),
          const SizedBox(width: 25,),
          addNewDishButton()
        ],
      )
  );
}

Widget addNewDishButton(){
  return TextButton(onPressed: (){},
    style: ButtonStyle(
        //minimumSize: MaterialStateProperty.all(Size.fromHeight(40)),
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0)),
        backgroundColor: MaterialStateProperty.all<Color>(greenShade2),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: mainGreen)
            )
        )
    ), child: Padding(padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10), child: Text("Add New Dish", textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.underline, color: mainGreen),)),
  );
}

TableRow dishListTableRow(String text1, String text2, String text3, String text4, String text5, String? text6, String text7){
  return TableRow(
      children: [
        tableLabelField(label: text1),
        tableInputField(value: text2),
        tableInputField(value:text3),
        tableInputField(value: text4),
        tableInputField(value: text5),
        tableImagefield(value:text6),
        tableInputField(value:text7),
      ]
  );
}

Widget dishListTable(){
  return Table(
    columnWidths: const {
      0: FlexColumnWidth(2),
      1: FlexColumnWidth(3),
      2: FlexColumnWidth(4),
      3: FlexColumnWidth(2),
      4: FlexColumnWidth(2),
      5: FlexColumnWidth(3),
      6: FlexColumnWidth(3),
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
            greenContainer(text: "Dish\nCode"),
            greenContainer(text: "Name"),
            greenContainer(text: "Price"),
            greenContainer(text: "Cost"),
            greenContainer(text: "Photo"),
            greenContainer(text: "Specification"),
          ]
      ),
      dishListTableRow("1001", "TCSA", "English Breakfast","10","12", "assets/temp_image.jpg", ""),
      dishListTableRow("1002", "CKXSOD", "Arabic Lunch", "", "","assets/temp_image.jpg", ""),
      dishListTableRow("1003", "SO", "Tea", "", "", null, ""),
      dishListTableRow("1004", "POPS", "Light snacks", "", "", null, ""),
      dishListTableRow("1005", "", "", "", "", null, ""),
      dishListTableRow("1006", "", "", "", "", null, ""),
      dishListTableRow("1007", "", "", "", "", null, ""),
      dishListTableRow("1008", "", "", "", "", null, ""),
      dishListTableRow("1009", "", "", "", "", null, ""),
    ],
  );
}

Widget tableInputField({required String value}){
  //Temporarily
  return TextFormField(
    initialValue: value,
    textAlign: TextAlign.center,
    decoration: const InputDecoration(
      border: InputBorder.none,
    ),

  );
}

Widget tableImagefield({required String? value}){
  if(value != null){
    return Center(
          child: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(value))
    );
  }else{
    return Container();
  }
}
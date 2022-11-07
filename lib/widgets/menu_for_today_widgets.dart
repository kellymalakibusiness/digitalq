import 'package:digitalq/widgets/specification_widgets.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'dish_list_widgets.dart';

Widget greenBoldText(String text){
  return Text(text, style: TextStyle(color: greenShade3, fontWeight: FontWeight.bold, fontSize: 16),);
}

Widget seeMenuButton(){
  return TextButton(onPressed: (){},
    style: ButtonStyle(
      //minimumSize: MaterialStateProperty.all(Size.fromHeight(40)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0)),
        backgroundColor: MaterialStateProperty.all<Color>(greenShade2),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: mainGreen)
            )
        )
    ), child: Padding(padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10), child: Text("See\nMenu", textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.underline, color: mainGreen),)),
  );
}

Widget menuForTodayRow1(){
  return const Padding(
      padding: EdgeInsets.all(10),
      child:Text("Fix Menu for Today", style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),),
      );
}

TableRow menuForTodayTableRow(String text1, String text2, String text3, String text4, String? text5, String text6, String text7, String text8, String text9){
  return TableRow(
      children: [
        tableLabelField(label: text1),
        tableInputField(value: text2),
        tableInputField(value:text3),
        tableInputField(value: text4),
        tableImagefield(value: text5),
        tableInputField(value:text6),
        tableInputField(value:text7),
        tableInputField(value:text8),
        tableInputField(value:text9),
      ]
  );
}

Widget menuForTodayTable(){
  return Table(
    columnWidths: const {
      0: FlexColumnWidth(2),
      1: FlexColumnWidth(3),
      2: FlexColumnWidth(4),
      3: FlexColumnWidth(2),
      4: FlexColumnWidth(3),
      5: FlexColumnWidth(3),
      6: FlexColumnWidth(3),
      7: FlexColumnWidth(3),
      8: FlexColumnWidth(3),
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
            greenContainer(text: "Dish Code"),
            greenContainer(text: "Name"),
            greenContainer(text: "Price"),
            greenContainer(text: "Photo"),
            greenContainer(text: "Breakfast"),
            greenContainer(text: "Lunch"),
            greenContainer(text: "Dinner"),
            greenContainer(text: "All time"),
          ]
      ),
      menuForTodayTableRow("1001", "TCSA", "English Breakfast","9","assets/temp_image.jpg", "<25>", "<0>", "<0>", "<0>"),
      menuForTodayTableRow("1002", "CKXSOD", "Arabic lunch","","assets/temp_image.jpg", "<0>", "<50>", "<25>", "<0>"),
      menuForTodayTableRow("1003", "SO", "Tea","",null, "", "", "", ""),
      menuForTodayTableRow("1004", "POPS", "Light snacks","",null, "", "", "", ""),
      menuForTodayTableRow("1005", "", "","",null, "", "", "", ""),
      menuForTodayTableRow("1006", "", "","",null, "", "", "", ""),
      menuForTodayTableRow("1007", "", "","",null, "", "", "", ""),
      menuForTodayTableRow("1008", "", "","",null, "", "", "", ""),
      menuForTodayTableRow("1009", "", "","",null, "", "", "", ""),
      menuForTodayTableRow("1010", "", "","",null, "", "", "", ""),
    ],
  );
}

Widget menuForTodayRow2(){
  return Padding(padding: const EdgeInsets.only(top: 10, right: 10),
  child: Row(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(value: true, onChanged: (value){}),
          const SizedBox(width: 5,),
          greenBoldText("Repeat\nTomorrow")
        ],
      ),
      const Spacer(),
      seeMenuButton()
    ],
  ),);
}
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'home_widgets.dart';

class PointerButtonEnd extends CustomPainter{
  Paint? painter;
  PointerButtonEnd(){
    painter = Paint()
        ..color = Colors.grey
        ..style = PaintingStyle.fill;
  }

    @override
    void paint(Canvas canvas, Size size){
    var path = Path();

    //path.moveTo(size.width/2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width/2);
    path.close();
    
    canvas.drawPath(path, painter!);
    }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

Widget greenContainer({required String text}){
  return Container(
    color: mainGreen,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 40),
          child: Text(text, textAlign: TextAlign.center, style: const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),),
    )
  );
}

Widget tableLabelField({required String label}){
  return Padding(
    padding: const EdgeInsets.only(left: 3, right: 3, top: 5),
    child: Text(
      label,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 14,),
    )



    /*TextFormField(
      readOnly: true,
      initialValue: label,
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        border: InputBorder.none,
      ),

    ),*/
  );
}

Widget tableInputfield({required String value}){
  return TextFormField(
    initialValue: value,
    textAlign: TextAlign.center,
    decoration: const InputDecoration(
      border: InputBorder.none,
    ),

  );
}

TableRow productSpecificationTableRow(String text1, String text2, String text3){
  return TableRow(
      children: [
        tableLabelField(label: text1),
        tableInputfield(value: text2),
        tableInputfield(value:text3),
      ]
  );
}

Widget pointerButton(String text, double width){
  return Row(
    children: [
      Container(
        height: 50,
        width: width,
        color: Colors.grey,
        child: TextButton(onPressed: (){},
          child: Text(text, style: TextStyle(color: Colors.black, decoration: TextDecoration.underline),),
        ),
      ),
      CustomPaint(
        size: Size(50,50),
        painter: PointerButtonEnd(),
      )
    ],
  );
}

Widget productSpecificationRow1(){
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0.0),
      child: Text("Product Specification", textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Colors.grey, fontWeight: FontWeight.bold),));
}

Widget productSpecificationTable(){
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
      productSpecificationTableRow("1", "T", "Name"),
      productSpecificationTableRow("2", "C", "Price"),
      productSpecificationTableRow("3", "S", "Sugar %"),
      productSpecificationTableRow("4", "P", "Protein %"),
      productSpecificationTableRow("5", "", ""),
      productSpecificationTableRow("6", "", ""),
      productSpecificationTableRow("7", "", ""),
      productSpecificationTableRow("8", "", ""),
      productSpecificationTableRow("9", "", ""),

    ],
  );
}

Widget productSpecificationRow3(){
  return row1BoxContainer(
    child: Padding(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("Menu Preparation", style: TextStyle(color: warningRed, fontWeight: FontWeight.bold),),
          const SizedBox(height: 15,),
              pointerButton("Product Specification (Max 50)", 250),
          const SizedBox(height: 15),
              pointerButton("Product List", 250),
          const SizedBox(height: 15,),
              pointerButton("Dish Specification (Max 50)", 250),
          const SizedBox(height: 15,),
          pointerButton("Dish List", 250)
        ],
      ),
    )
  );
}

Widget productSpecificationRow4(){
  return row1BoxContainer(
    child: Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                pointerButton("Fix Menu for Today.", 140),
              ],
            ),
          ),
          Expanded(
            flex: 2,
              child: pillShapedButton(child: Padding(padding: EdgeInsets.symmetric(vertical: 7, horizontal: 10), child: Text("See Menu for\nToday", textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.underline, color: mainGreen),)))
          ),
        ],
      ),
    )
  );
}

Widget tablesBottomLayout(){
  return Column(
    children: [
      const SizedBox(height: 40,),
      productSpecificationRow3(),
      const SizedBox(height: 20,),
      productSpecificationRow4(),
      IconButton(onPressed: (){},
        iconSize: 58,
        icon: Icon(Icons.home, color: Colors.grey),)
    ],
  );
}
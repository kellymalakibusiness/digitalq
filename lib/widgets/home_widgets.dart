import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'button.dart';

Widget radioButtonWithLabelHorizontalLayout({required String label}){
  return Row(
    children: [
        Row(
          children: [
            SizedBox(
              height: 24,
              width: 24,
              child: Radio(value: null, groupValue: null, onChanged: (Null? value) {  }, fillColor: MaterialStateColor.resolveWith((states) => mainGreen),),
            ),
            Text(label),
          ],
        )
    ],
  );
}

Widget row1BoxContainer({child}){
  return Container(
    padding: EdgeInsets.all(4.0),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: greenShade1,
    ),
    child: child,
  );
}

Widget checkBoxContainer({required String label}){
  return squareWithRoundedEdges(
      padding: 4.0,
      child: Column(
        children: [
          Checkbox(value: true, onChanged: (state)=> true, activeColor: mainGreen,),
          Text(label)
        ],
      )
  );
}

Widget radioButtonVerticalContainer({required String label}){
  return squareWithRoundedEdges(
      padding: 4.0,
      child: Column(
        children: [
          Radio(value: null, groupValue: null, onChanged: (Null? value) {  }, fillColor: MaterialStateColor.resolveWith((states) => mainGreen)),
          Text(label)
        ],
      )
  );
}

Widget squareWithRoundedEdges({child, padding}){
  return Container(
    padding: EdgeInsets.all(padding),
    decoration: BoxDecoration(
      border: Border.all(width: 2, color: mainGreen),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: greenShade2,
    ),
    child: child,
  );
}

Widget greenButton1(String label){
  return TextButton(onPressed: (){},
    style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size.fromHeight(40)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0)),
        backgroundColor: MaterialStateProperty.all<Color>(greenShade2),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),

            )
        )
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
      child: Text(label, style: TextStyle(decoration: TextDecoration.underline, color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
  ),
    )
  );
}

Widget greenButton2(String label){
  return TextButton(onPressed: (){},
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size.fromHeight(150)),
          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0)),
          backgroundColor: MaterialStateProperty.all<Color>(greenShade3),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),

              )
          )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 10),
        child: Text(label, style: TextStyle(decoration: TextDecoration.underline, color: Colors.white, fontWeight: FontWeight.w600, fontSize: 26),
        ),
      )
  );
}

Widget pillShapedButton({required Widget child}){
  return TextButton(onPressed: (){},
    style: ButtonStyle(
      minimumSize: MaterialStateProperty.all(Size.fromHeight(40)),
      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0)),
      backgroundColor: MaterialStateProperty.all<Color>(greenShade2),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: BorderSide(color: mainGreen)
          )
      )
    ), child: child,
  );
}

Widget DarkGreenText(label){
  return Text(label, style:TextStyle(fontWeight: FontWeight.w900, color: mainGreen, fontSize: 28), );
}

Widget homeRow1(){
  return row1BoxContainer(
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              radioButtonWithLabelHorizontalLayout(label: "Open"),
              radioButtonWithLabelHorizontalLayout(label: "Close")
            ],
          ),
          checkBoxContainer(label: "All Time"),
          radioButtonVerticalContainer(label: "Breakfast"),
          radioButtonVerticalContainer(label: "Lunch"),
          radioButtonVerticalContainer(label: "Dinner"),
        ],
      ),
  );
}

Widget homeRow2(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        flex: 1,
        child: Column(
          children: [
            pillShapedButton(child: Text("Menu Preparation", style: TextStyle(decoration: TextDecoration.underline, color: warningRed),)),
            pillShapedButton(child: Text("See Menu for Today", style: TextStyle(decoration: TextDecoration.underline, color: mainGreen),))
          ],
        ),
      ),
      SizedBox(width: 20,),
      Expanded(
        flex: 1,
        child: lightGreenCard(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  DarkGreenText("10"),
                  Container(
                    height: 2.0,
                    width: 40.0,
                    color: mainGreen
                  ),
                  DarkGreenText("25")
                ],
              ),
              const Text("Order for\nToday", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700), textAlign: TextAlign.right,)
            ],
          )
        ),
      )
    ],
  );
}

Widget RowImages(){
  return Row(
    children: [
      Expanded(flex: 10,
          child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/temp_image.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Padding(
                padding: EdgeInsets.all(7),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Z1001", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),),
                    Text("Delivered", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16)),
                    Spacer(),
                    Text("\$3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22))
                  ],
                ),
              )// Foreground widget here
          ),
      ),
      Expanded(flex: 1, child: Container()),
      Expanded(flex: 10,
        child: Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/temp_image.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: EdgeInsets.all(7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Z1001", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),),
                  Text("Delivered", style: TextStyle(fontStyle: FontStyle.italic, fontSize: 16)),
                  Spacer(),
                  Text("\$3", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22))
                ],
              ),
            )// Foreground widget here
        ),
      ),
    ],
  );
}

Widget homeRow3(){
  return Column(
    children: [
      RowImages(),
      SizedBox(height: 10,),
      RowImages(),
    ],
  );
}
Widget homeRow4(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      radioButtonWithLabelHorizontalLayout(label: "Breakfast"),
      radioButtonWithLabelHorizontalLayout(label: "Lunch"),
      radioButtonWithLabelHorizontalLayout(label: "Dinner"),
      radioButtonWithLabelHorizontalLayout(label: "All Time")
    ],
  );
}
Widget homeRow5(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      radioButtonWithLabelHorizontalLayout(label: "all Orders"),
      radioButtonWithLabelHorizontalLayout(label: "Delivered"),
      radioButtonWithLabelHorizontalLayout(label: "Waiting")
    ],
  );
}

Widget homeRow6(){
  return lightGreenCard(
        child: Padding(
          padding: EdgeInsets.all(2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Search Order", style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    radioButtonWithLabelHorizontalLayout(label: "Dish code"),
                    radioButtonWithLabelHorizontalLayout(label: "Coupon code"),
                    radioButtonWithLabelHorizontalLayout(label: "Phone Number"),
                  ],

                ),
              ),
              TextFormField(

                textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: "Search with Dish/coupon code/phone", fillColor: Colors.white, filled: true),
              )
            ],
          ),
        )
      );
}
Widget homeRow7(){
  return Row(
    children: [
      Expanded(flex: 1, child: Container(),),
      Expanded(flex: 15,
          child: Column(
            children: [
              greenButton1("QR Code to\nreceive payment"),
              SizedBox(height: 10,),
              greenButton1("Receive payment by\nCash/Card/Online\nTransfer"),
            ],
          )
      ),
      Expanded(flex: 1, child: Container(),),
      Expanded(flex: 15,
          child: greenButton2("Scan to\nDeliver")
      ),
      Expanded(flex: 1, child: Container(),)
    ],
  );
}
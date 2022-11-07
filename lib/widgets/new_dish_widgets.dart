import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors.dart';

Widget halfColumnBackground(String title, List<Widget> theList){
  return Container(
    height: 400,
    width: double.infinity,
    padding: const EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      border: Border.all(color: mainGreen, width: 1),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: greenShade1,
    ),
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15)),
          const SizedBox(height: 10),
          Padding(padding: const EdgeInsets.only(left: 8, right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: theList,
            ),
          )
        ],
      ),
    ),
  );
}

Widget photoButton(){
  return TextButton(onPressed: (){},
    style: ButtonStyle(
      //minimumSize: MaterialStateProperty.all(Size.fromHeight(40)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0)),
        backgroundColor: MaterialStateProperty.all<Color>(greenShade2),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: mainGreen)
            )
        )
    ), child: Padding(padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10), child: Text("Photo", textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.underline, color: mainGreen),)),
  );
}

Widget saveDishWithQRCodeButton(){
  return TextButton(onPressed: (){},
    style: ButtonStyle(
      //minimumSize: MaterialStateProperty.all(Size.fromHeight(40)),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0)),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.red[600]!),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: mainGreen)
            )
        )
    ), child: const Padding(padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10), child: Text("Save Dish with QR code", textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.underline, color: Colors.white),)),
  );
}

Widget goTopOrBottomRow(String theText){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(theText, style: const TextStyle(fontSize: 18) ),
      Column(
        children: [
          Icon(Icons.arrow_drop_up_outlined, color: mainGreen),
          const SizedBox(height: 3,),
          Icon(Icons.arrow_drop_down_outlined, color: mainGreen,)
        ],
      )
    ],
  );
}

Widget productListText(String theText){
  return Text(theText, style: const TextStyle(fontSize: 18));
}

Widget productListHalfColumn(){
  return halfColumnBackground("Product List",
    [
      productListText("Tea"),
      productListText("Coffee"),
      productListText("Ice cream")
    ]
  );
}

Widget selectedProductsHalfColumn(){
  return halfColumnBackground("Selected Products",
      [
        goTopOrBottomRow("Egg"),
        goTopOrBottomRow("Pineapple")
      ]
  );
}

Widget newDishRow1(){
  return const Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: Text("New Dish" , textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Colors.grey, fontWeight: FontWeight.bold)),
  );
}

Widget newDishRow2(){
  return Row(
    children: [
      Expanded(flex: 9, child: productListHalfColumn()),
      Expanded(flex: 1, child: Container()),
      Expanded(flex: 9, child: selectedProductsHalfColumn()),
    ],
  );
}

Widget newDishRow3(){
  return Padding(
    padding: const EdgeInsets.only(left: 7, right: 7),
    child: TextFormField(
      textAlign: TextAlign.center,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: "Name of the new dish"
      ),
    ),
  );
}

Widget newDishRow4(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset("assets/temp_image.jpg", width: 60, height: 60),
      const Spacer(),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          photoButton(),
          saveDishWithQRCodeButton()
        ],
      )
    ],
  );
}
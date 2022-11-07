import 'package:digitalq/constants/colors.dart';
import 'package:flutter/material.dart';

Widget iconHeading({required IconData theIcon, required String text}){
  return Padding(
    padding: const EdgeInsets.only(bottom: 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(theIcon, color: mainGreen, size: 30),
        const SizedBox(width: 5),
        Text(text, style: const TextStyle(color: Colors.black, fontSize: 16),)
      ],
    ),
  );
}

Widget textBox({required String theText}){
  return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          border: Border.all(color: mainGreen, width: 2)
      ),
          padding: const EdgeInsets.all(8),
    child: Column(
      children: [
        Text(theText),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("More", style: TextStyle(color: Colors.blue[800], decoration: TextDecoration.underline),)
          ],
        )
      ],
    ),
  );
}

Widget backButton(){
  return Container(
      decoration: BoxDecoration(
        color: greenShade1,
      border: Border.all(
      color: mainGreen
  ),
  borderRadius: const BorderRadius.all(Radius.circular(30))
  ),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.arrow_back_ios_new, size: 30),
          ),
  );
}

Widget boldText(String theText){
  return Text(theText, style: TextStyle(color: mainGreen, fontWeight: FontWeight.bold),);
}

Widget normalGreenText(String theText){
  return Text(theText, style: TextStyle(color: mainGreen),);
}

//Our Widgets

Widget row1(){
  return iconHeading(theIcon: Icons.health_and_safety_outlined, text: "Data Safety");
}

Widget row2(){
  return textBox(theText: 'Dowell may collect certain personally identifiable information ("personal information") about you when you visit our App. Examples of personal information we may collect include your name, address, telephone number, fax number, and e-mail address.We also automatically collect certain non-personally identifiable information when you visit our App, including,but not limited to, the location, the type of browser you are using, the type of operating system you are using, and the domain name of your Internet service provider.');
}

Widget row3(){
  return iconHeading(theIcon: Icons.visibility_off_outlined, text: "Personal Privacy");
}

Widget row4(){
  return textBox(theText: 'You provide your personal information (first name, last name, email, phone number, company name, etc.) to us while creating an account with us. We store this information reliably. We use this information to serve you better. This information is only available to the employees, contractors, and subcontractors of DOWELL WIFI QR CODE REVIEWS and is never shared for commercial gains to unauthorized personnel or businesses.');
}

Widget row5(){
  return textBox(theText: "Disclaimer - We may process your user Information where: you have given your consent; the processing is necessary for a contract between you and us; the processing is required by applicable law; the processing is necessary to protect the vital interests of any individual; or where we have a valid legitimate interest in the processing.");
}

Widget row6(){
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: mainGreen, width: 2)
    ),
    padding: const EdgeInsets.all(8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("App details", style: TextStyle(color: Colors.black),),
            Icon(Icons.check_circle_outline_rounded, color: mainGreen, size: 70,)
          ],
        ),
        const SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            boldText("Installation ID"),
            normalGreenText("1234567890"),
            boldText("Installed version"),
            boldText("8.00.00")
          ],
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: (){},
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
              ), child: Padding(padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10), child: Text("Install", textAlign: TextAlign.center, style: TextStyle(decoration: TextDecoration.underline, color: mainGreen),)),
            )
          ],
        ),
        const SizedBox(width: 15,)
      ],
    ),
  );
}

Widget row7(){
  return Row(
    children: [
      const Spacer(flex: 1,),
      backButton(),
      const Spacer(flex: 7)
    ],
  );
}
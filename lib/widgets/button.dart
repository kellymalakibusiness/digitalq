import 'package:digitalq/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget lightGreenCard({child}){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: greenShade2,
    ),
    child: child,
  );
}
import 'package:digitalq/screens/DataSafetyAndPersonalPrivacy.dart';
import 'package:digitalq/screens/DishList.dart';
import 'package:digitalq/screens/DishSpecification.dart';
import 'package:digitalq/screens/HomeScreen.dart';
import 'package:digitalq/screens/MenuForToday.dart';
import 'package:digitalq/screens/NewDishScreen.dart';
import 'package:digitalq/screens/ProductList.dart';
import 'package:digitalq/screens/ProductSpecification.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomePage(),
      //home: ProductSpecificationScreen(),
      //home: DishSpecificationScreen(),
      //home: DishListScreen(),
      //home: MenuForTodayScreen(),
      //home: DataSafetyAndPersonalPrivacy(),
      //home: ProductList(),
      home: NewDishScreen(),
    );
  }
}

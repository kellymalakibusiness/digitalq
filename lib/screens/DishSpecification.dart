import 'package:flutter/material.dart';

import '../widgets/dish_specification_widgets.dart';
import '../widgets/specification_widgets.dart';

class DishSpecificationScreen extends StatefulWidget {
  const DishSpecificationScreen({Key? key}) : super(key: key);

  @override
  State<DishSpecificationScreen> createState() => _DishSpecificationScreenState();
}

class _DishSpecificationScreenState extends State<DishSpecificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              dishSpecificationRow1(),
              dishSpecificationTable(),
              tablesBottomLayout()
            ],
          ),
        ),
      ),
    );
  }
}

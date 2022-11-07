import 'package:flutter/material.dart';

import '../widgets/dish_list_widgets.dart';
import '../widgets/specification_widgets.dart';

class DishListScreen extends StatelessWidget {
  const DishListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              dishListRow1(),
              dishListTable(),
              tablesBottomLayout()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/new_dish_widgets.dart';

class NewDishScreen extends StatelessWidget {
  const NewDishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                newDishRow1(),
                newDishRow2(),
                const SizedBox(height: 10),
                newDishRow3(),
                const SizedBox(height: 5),
                newDishRow4(),
              ],
            ),
          )
      ),
    );
  }
}

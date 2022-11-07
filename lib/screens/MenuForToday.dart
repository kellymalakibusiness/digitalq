import 'package:flutter/material.dart';

import '../widgets/menu_for_today_widgets.dart';
import '../widgets/specification_widgets.dart';

class MenuForTodayScreen extends StatelessWidget {
  const MenuForTodayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              menuForTodayRow1(),
              menuForTodayTable(),
              menuForTodayRow2(),
              tablesBottomLayout()
            ],
          ),
        ),
      ),
    );
  }
}

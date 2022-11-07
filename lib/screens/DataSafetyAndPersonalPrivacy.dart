import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/data_safety_and_personal_privacy_widgets.dart';

class DataSafetyAndPersonalPrivacy extends StatelessWidget {
  const DataSafetyAndPersonalPrivacy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backGroundGreen,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 10,),
                row1(),
                row2(),
                const SizedBox(height: 15,),
                row3(),
                row4(),
                const SizedBox(height: 15,),
                row5(),
                const SizedBox(height: 30,),
                row6(),
                const SizedBox(height: 20,),
                row7(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:digitalq/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/colors.dart';
import '../widgets/home_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: backGroundGreen,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Texting Mode/Learning Mode/Archived Data", style: TextStyle(color: warningRed),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Home"),
                  Spacer(),
                  IconButton(icon: Icon(Icons.settings), onPressed: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen()));
                  },)
                ],
              ),
              Container(color: mainGreen, height: 4,),
              const SizedBox(height: 20,),
              homeRow1(),
              const SizedBox(height: 20,),
              homeRow2(),
              const SizedBox(height: 20,),
              homeRow3(),
              const SizedBox(height: 20,),
              homeRow4(),
              Container(color: mainGreen, height: 4,),
              homeRow5(),
              const SizedBox(height: 20,),
              homeRow6(),
              const SizedBox(height: 20,),
              homeRow7(),
              const SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../widgets/specification_widgets.dart';

class ProductSpecificationScreen extends StatelessWidget {
  const ProductSpecificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                productSpecificationRow1(),
                productSpecificationTable(),
                tablesBottomLayout()
              ],
            ),
          )
      ),
    );
  }
}

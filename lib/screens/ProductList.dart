import 'package:flutter/material.dart';
import '../widgets/product_list_widgets.dart';
import '../widgets/specification_widgets.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                productListRow1(),
                productListTable(),
                tablesBottomLayout()
              ],
            ),
          )
      ),
    );
  }
}

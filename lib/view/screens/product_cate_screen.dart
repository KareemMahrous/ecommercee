import 'package:ecommerce/constant.dart';
import 'package:ecommerce/control/get_product_cate.dart';
import 'package:ecommerce/view/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductCateScreen extends StatelessWidget {

  int id;

  ProductCateScreen({required this.id });


  @override
  Widget build(BuildContext context) {

    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Background,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: FutureBuilder(
        future: API.fetchProductCate(id),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          return  snapshot.data != null
              ?Container(
            child: GridView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, int Index) {
                return ProductCard(
                  product: snapshot.data[Index],
                );
              },
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                  (orientation == Orientation.portrait) ? 2 : 3),
            ),
          ):Center(child: CircularProgressIndicator(
            color: Primary,
          ));
        },

      ),
    );
  }
}

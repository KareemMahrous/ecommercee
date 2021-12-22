import 'package:ecommerce/control/get_categories.dart';
import 'package:ecommerce/control/get_products.dart';
import 'package:ecommerce/view/widgets/category_card.dart';
import 'package:ecommerce/view/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 30.0, bottom: 10.0, right: 8.0, left: 8.0),
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              color: Dark,
              child: TextField(
                onChanged: (value) {
                  //********************************************************************
                },
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.search_outlined,
                    color: Gray,
                  ),
                  labelText: "Search",
                  labelStyle: TextStyle(color: Gray),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8.0),
            child: Text(
              "Categories",
              style: TextStyle(
                fontSize: FontLarge,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
          ),
          Consumer(
            builder: (context, watch, child) {
              final viewModelCategory = watch(getCategories);
              return Container(
                height: 150.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: viewModelCategory.listCategoryModel.length,
                  itemBuilder: (context, int Index) {
                    return CategoryCard(
                      id: viewModelCategory.listCategoryModel[Index].id,
                      name: viewModelCategory.listCategoryModel[Index].name,
                      avatar: viewModelCategory.listCategoryModel[Index].avatar,
                    );
                  },
                ),
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8.0),
            child: Text(
              "Sale",
              style: TextStyle(
                fontSize: FontXLarge,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
          Expanded(child: Consumer(
            builder: (context, watch, child) {
              final viewModelProduct = watch(getProducts);
              return Container(
                child: GridView.builder(
                  itemCount: viewModelProduct.listProductModel.length,
                  itemBuilder: (context, int Index) {
                    return ProductCard(
                      product: viewModelProduct.listProductModel[Index],
                    );
                  },
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          (orientation == Orientation.portrait) ? 2 : 3),
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}




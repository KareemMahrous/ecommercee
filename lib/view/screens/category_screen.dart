import 'package:ecommerce/constant.dart';
import 'package:ecommerce/control/get_categories.dart';
import 'package:ecommerce/view/widgets/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Background,
        centerTitle: true,
        title: Text(
          'Categories',
          style: TextStyle(fontSize: FontLarge, color: textColor),
        ),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: White,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.search_outlined,
              color: White,
            ),
          ),
        ],
      ),
      body: Consumer(
        builder: (context, watch, child) {
          final viewModelCategory = watch(getCategories);
          return Container(
            color: Background,
            padding: EdgeInsets.only(top:8.0),
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: viewModelCategory.listCategoryModel.length,
              itemBuilder: (context, int Index) {

                return CategoryTile(
                  id: viewModelCategory.listCategoryModel[Index].id,
                  name: viewModelCategory.listCategoryModel[Index].name,
                  avatar: viewModelCategory.listCategoryModel[Index].avatar,
                );
              },
            ),
          );
        },
      ),
    );
  }
}



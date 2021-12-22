import 'dart:convert';

import 'package:ecommerce/model/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final getCategories=ChangeNotifierProvider<GetCategory>((ref)=> GetCategory());

class GetCategory extends ChangeNotifier {
  List<Category>listCategoryModel=[];

  GetCategory(){
    getCategoriesData();
  }

  Future getCategoriesData()async{
    listCategoryModel=[];
    try{
      var url=Uri.parse("https://retail.amit-learning.com/api/categories");
      //print(url);
      var response=await http.get(url);
      var resposebody=jsonDecode(response.body)["categories"];
      //print(resposebody);
      for(int i=0;i<resposebody.length;i++){
        listCategoryModel.add(Category.fromMap(resposebody[i]));
      }
    }catch(e){
      print("e$e");
    }

    notifyListeners();

  }

}
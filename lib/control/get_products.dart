import 'dart:convert';

import 'package:ecommerce/model/category.dart';
import 'package:ecommerce/model/prodect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

final getProducts=ChangeNotifierProvider<GetProduct>((ref)=> GetProduct());

class GetProduct extends ChangeNotifier {
  List<Product>listProductModel=[];

  GetProduct(){
    getProductsData();
  }

  Future getProductsData()async{
    listProductModel=[];
    try{
      var url=Uri.parse("https://retail.amit-learning.com/api/products");
      //print(url);
      var response=await http.get(url);
      var resposebody=jsonDecode(response.body)["products"];
      //print(resposebody);
      for(int i=0;i<resposebody.length;i++){
        listProductModel.add(Product.fromMap(resposebody[i]));
      }
    }catch(e){
      print("e$e");
    }

    notifyListeners();

  }

}
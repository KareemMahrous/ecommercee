import 'dart:convert';
import 'package:ecommerce/model/prodect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class API {

  static fetchProductCate(int id) async {
    List<Product> products = [];
    var url = Uri.parse(
        "https://retail.amit-learning.com/api/categories/$id");
    var response = await http.get(url);
    var responsebody = jsonDecode(response.body)['products'];
    for (var i in responsebody) {
      products.add(Product.fromMap(i));
    }
    return products;
  }


}

// int id=0;
//
// final getProductCate=ChangeNotifierProvider<GetProductCate>((ref)=> GetProductCate(id));
//
//
//
// class GetProductCate extends ChangeNotifier {
//
//   List<Product>listProductCate=[];
//   GetProductCate(idCategory){
//     getProductCateData(idCategory);
//   }
//
//   Future getProductCateData(idCategory)async{
//     listProductCate=[];
//     try{
//       var url=Uri.parse("https://retail.amit-learning.com/api/categories/$idCategory");
//       var response=await http.get(url);
//       var resposebody=jsonDecode(response.body)["products"];
//       for(int i=0;i<resposebody.length;i++){
//         listProductCate.add(Product.fromMap(resposebody[i]));
//       }
//     }catch(e){
//       print("e$e");
//     }
//
//     notifyListeners();
//
//   }
//
// }


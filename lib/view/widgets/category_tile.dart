import 'package:ecommerce/constant.dart';
import 'package:ecommerce/view/screens/product_cate_screen.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  int id;
  String name;
  String avatar;

  CategoryTile({
    required this.id,
    required this.name,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
              return ProductCateScreen(id: id,);
            }));
      },
      child: Card(
        color: Dark,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  name,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: FontTitle,
                      color: textColor),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 130,
                height: 100,
                decoration: BoxDecoration(
                  color: White,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      avatar,
                    ),
                  ),
                ),
                padding: EdgeInsets.only(top: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
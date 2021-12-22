import 'package:ecommerce/constant.dart';
import 'package:ecommerce/view/screens/product_cate_screen.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  int id;
  String name;
  String avatar;

  CategoryCard({
    required this.id,
    required this.name,
    required this.avatar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return ProductCateScreen(id: id,);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Container(
              width: 130,
              height: 100,
              decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
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
            SizedBox(height: 8),
            Text(
              name,
              style: TextStyle(
                  color: textColor,
                  fontSize: FontButtons,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

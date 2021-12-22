import 'package:ecommerce/constant.dart';
import 'package:ecommerce/model/prodect.dart';
import 'package:ecommerce/view/screens/product_screen.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  Product product;

  ProductCard({
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
              return ProductScreen(product: product,);
            }));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: Colors.transparent,
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: White,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      product.avatar.toString(),
                    ),
                  ),
                ),
                padding: EdgeInsets.only(top: 15),
              ),
              SizedBox(height: 8),
              RichText(
                overflow: TextOverflow.ellipsis,
                strutStyle: StrutStyle(fontSize: 12.0),
                text: TextSpan(
                  style: TextStyle(
                    color: textColor,
                    fontSize: FontButtons,
                    fontWeight: FontWeight.w500,
                  ),
                  text: product.name.toString(),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.priceFinalText.toString(),
                      style: TextStyle(
                          color: textColor,
                          fontSize: FontButtons,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Container(
                        height: 30,
                        width: 30,
                        child: FloatingActionButton(
                          heroTag: null,
                          backgroundColor: Primary,
                          child: const Icon(
                            Icons.local_mall_outlined,
                            size: 16,
                            color: White,
                          ),
                          onPressed: () {
                            //********************************************************
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

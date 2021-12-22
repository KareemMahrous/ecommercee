import 'package:ecommerce/constant.dart';
import 'package:ecommerce/model/prodect.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  Product product;

  ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Background,
      // appBar: AppBar(
      //   elevation: 0.0,
      //   backgroundColor: Colors.transparent,
      //   leading: Icon(Icons.arrow_back_ios),
      // ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    product.avatar.toString(),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 300,
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: FontHeader,
                            color: textColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          product.priceFinalText,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: FontHeader,
                            color: textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      product.title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: FontTitle,
                        color: Gray,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: product.description != null
                        ? Text(
                            product.description,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: FontTitle,
                              color: Gray,
                            ),
                          )
                        : Text(
                            "No Description",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: FontTitle,
                              color: Gray,
                            ),
                          ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 10,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Primary),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            // side: BorderSide(color: Primary)
                          ))),
                      child: const Text(
                        "ADD TO CART",
                        style: TextStyle(color: White, fontSize: FontButtons),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

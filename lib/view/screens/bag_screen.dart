import 'package:ecommerce/constant.dart';

import 'package:ecommerce/view/screens/payment_page.dart';
import 'package:ecommerce/view/widgets/card_in_bag.dart';

import 'package:flutter/material.dart';

class BagScreen extends StatefulWidget {
  @override
  _BagScreenState createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          )
        ],
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "My Bag",
              style: TextStyle(
                  fontSize: FontXLarge,
                  fontWeight: FontWeight.w800,
                  color: White),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          Expanded(
              flex: 2,
              child:
                ListView(
                  children: [
                    ItemCard(),
                    ItemCard(),
                    ItemCard(),
                    ItemCard(),
                  ],
                ),
              ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text("Enter your promo code"),
                      labelStyle: TextStyle(color: Gray),
                    ),
                    onChanged: (text) {
                      // do something with text
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Total amount:",
                        style: TextStyle(color: Gray, fontSize: FontTitle),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "55\$",
                        style: TextStyle(color: Gray, fontSize: FontTitle),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: MediaQuery.of(context).size.width,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Primary),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    // side: BorderSide(color: Primary)
                  ))),
              child: const Text(
                "CHECK OUT",
                style: TextStyle(color: White, fontSize: FontButtons),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return PaymentPage();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}

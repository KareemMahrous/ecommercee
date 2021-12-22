import 'package:ecommerce/constant.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {


  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  int counter = 1;


  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Dark,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(
              "https://retail.amit-learning.com//images//products//ZvQcRNN9570Lw927SOmOI02xgasfysuT616SBdlp.jpg"),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Dress",
                      style: TextStyle(
                          fontSize: FontTitle,
                          fontWeight: FontWeight.w800,
                          color: White),
                    ),
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: FloatingActionButton(
                          heroTag: null,
                          backgroundColor: Background,
                          child: const Icon(
                            Icons.remove,
                            size: 14,
                            color: White,
                          ),
                          onPressed: () {
                            setState(() {
                              (counter >= 0)?counter--:
                                  counter=0;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "$counter",
                        style: const TextStyle(
                            color: White, fontSize: FontTitle),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: FloatingActionButton(
                          heroTag: null,
                          backgroundColor: Background,
                          child: const Icon(
                            Icons.add,
                            size: 14,
                            color: White,
                          ),
                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "55"+"\$",
                    style: TextStyle(color: White, fontSize: FontTitle),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }


}

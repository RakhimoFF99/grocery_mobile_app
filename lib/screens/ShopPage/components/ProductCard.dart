import 'package:flutter/material.dart';
import 'package:grocery/Constants.dart';

class ProductCard extends StatelessWidget {
  final index;
  ProductCard({this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: hintColor.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(20),
              ),
              height: size.height / 2.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag:index,
                    child: Container(
                      height: size.height / 5,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/images/red_apple_small.png',
                        width: size.width / 1.8,
                      ),
                    ),
                  ),
                  Text(
                    "Organic bananas",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, fontSize: size.width / 25),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '7pcs, Prices',
                    style: TextStyle(color: hintColor),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$4.99",
                        style: TextStyle(
                            fontSize: size.width / 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: btnColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              )),

      ],
    );
  }
}

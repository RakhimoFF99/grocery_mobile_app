import 'package:flutter/material.dart';
import 'package:grocery/Constants.dart';

class CategoryCard extends StatelessWidget {
  final index;
  CategoryCard({this.index});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Hero(
          tag: index,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: fruitBG.withOpacity(0.1),
                border: Border.all(color: hintColor.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(20),
              ),
              height: size.height / 3.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.height / 5,
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/images/banan.png',
                      width: size.width / 1.8,
                    ),
                  ),
                  Text(
                    'Cooking Oil & Ghee',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, fontSize: size.width / 25),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}

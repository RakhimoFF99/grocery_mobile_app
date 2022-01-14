import 'package:flutter/material.dart';
import 'package:grocery/Constants.dart';
import 'package:grocery/screens/ExplorePage/components/CategoryCard.dart';

Widget ExplorePage(size, context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width / 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Center(
            child: Text('Find products',
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: size.width / 24)),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                color: inputBg, borderRadius: BorderRadius.circular(15)),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  border: InputBorder.none,
                  hintText: 'Search store',
                  hintStyle: TextStyle(fontWeight: FontWeight.w600)),
              style: TextStyle(),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: size.height * 0.00120,
                  crossAxisSpacing: 20,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: [
                          CategoryCard(
                            index: 1,
                          )
                        ],
                      ));
                }),
          )
        ],
      ));
}

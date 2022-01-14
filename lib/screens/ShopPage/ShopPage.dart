import 'package:flutter/material.dart';
import 'package:grocery/Constants.dart';
import 'package:grocery/screens/ProductPage/ProductPage.dart';
import 'package:grocery/screens/ShopPage/components/ProductCard.dart';

Widget ShopPage (size,context) {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width/20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            SizedBox(height: size.height/15,),
            Container(
              decoration: BoxDecoration(
                  color: inputBg,
                borderRadius: BorderRadius.circular(15)
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.black,),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  border: InputBorder.none,
                  hintText: 'Search store',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w600
                  )
                ),
                style: TextStyle(

                ),
              ),
            ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Exclusive offer',style: TextStyle(fontSize: size.width/18,fontWeight: FontWeight.w600),),
              Text("See more",style: TextStyle(
                color: hintColor,
                fontWeight: FontWeight.w600,

              ),)
            ],
          ),
          SizedBox(height: 20,),

          Container(
                  child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: size.height * 0.000750 ,
                        crossAxisSpacing: 15,
                      ),
                      itemCount:6,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProductPage(index:index)));
                            },
                            child: Column(

                              children: [
                                ProductCard(index: index,)
                              ],
                            ));
                      }),
          )




        ],
      )
  );
}
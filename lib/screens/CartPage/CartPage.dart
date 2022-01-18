import 'package:flutter/material.dart';
import 'package:grocery/Constants.dart';
import 'package:grocery/screens/CartPage/components/CartCard.dart';
Widget CartPage (size,context) {
  return Container(
    child: Column(
      children: [
        SizedBox(height: 25,),
        Center(
          child: Text("My card",style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20
          ),),
        ),
        SizedBox(height: 10,),
        Divider(thickness: 0.2,color: hintColor,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          child: Column(
            children: [
              CartCard(),

              CartCard(),

              CartCard(),

              CartCard(),



            ],
          ),)
      ],
    )
  );
}
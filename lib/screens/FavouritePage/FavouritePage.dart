import 'package:flutter/material.dart';
import 'package:grocery/screens/FavouritePage/components/FavouriteCard.dart';
Widget FavouritePage (size,context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        SizedBox(height: 25,),
        Center(
          child: Text("Favoutire",style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22
          ),),
        ),
        SizedBox(height: 20,),
        FavouriteCard(),
        FavouriteCard(),
        FavouriteCard(),
        FavouriteCard(),
      ],
    ),
  );
}
import 'package:flutter/material.dart';
import 'package:grocery/Constants.dart';
class FavouriteCard extends StatelessWidget {
  const FavouriteCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Column(
      children: [
        InkWell(
          child: Container(
            height: size.height/8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(

                  children: [
                    Image.asset('assets/images/red_apple_small.png'),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text('Bell Pepper Red',style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 16
                        ),),
                        Text('1kg,Price',style: TextStyle(
                            color: hintColor
                        ),),
                        Spacer(),

                      ],
                    )
                  ],

                ),
               IconButton(
                   onPressed: () {},
                   padding: EdgeInsets.zero,
                   constraints: BoxConstraints(),
                   splashRadius: 25,
                   icon: Icon(Icons.arrow_forward_ios_rounded))


              ],
            ),
          ),
        ),

        SizedBox(height: 25,)
      ],
    );
}}

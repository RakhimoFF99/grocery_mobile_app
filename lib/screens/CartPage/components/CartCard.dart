import 'package:flutter/material.dart';
import 'package:grocery/Constants.dart';
class CartCard extends StatelessWidget {
  const CartCard();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
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
                        Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(width: 0.4,color: hintColor.withOpacity(0.5))
                              ),
                              child: Center(
                               child: Icon(Icons.remove,color: Colors.green,),
                              ),
                            ),
                            SizedBox(width: 10,),
                            Text('1',style: TextStyle(
                              fontSize: 16
                            ),),
                            SizedBox(width: 10,),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(width: 0.4,color: hintColor.withOpacity(0.5))
                              ),
                              child: Center(
                                child: Icon(Icons.add,color: Colors.green,),
                              ),
                            ),


                          ],
                        )
                    ],
                  )
                ],

              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(

                      child: IconButton(
                        padding: EdgeInsets.zero,
                          constraints: BoxConstraints(),
                          splashRadius: 20,
                          onPressed: () {},
                          icon: Icon(Icons.close)),
                    ),
                    Text('\$4.99',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16
                    ),)
                  ],
              )

            ],
          ),
        ),
        SizedBox(height: 20,)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grocery/Constants.dart';
import 'package:grocery/screens/AccountPage/components/AccountCard.dart';
Widget AccountPage (size,context) {
  return Container(

    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 50,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            children: [
              Container(

                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://avatars.mds.yandex.net/i?id=e157550c2736f574c60fc9fe36e0581a-3527582-images-thumbs&n=13')
                )),

              ),
              SizedBox(width: 20,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Afsar Hossen",style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20

                  ),),
                  SizedBox(height: 2,),

                  Text("Imshuvo97@gmail.com",style: TextStyle(

                    color: hintColor

                  ),)
                ],
              )
            ],
          ),
        ),

        SizedBox(height: 50,),
        AccountCard(title: 'Orders',icon:Icon(Icons.shopping_bag),),
        AccountCard(title: 'My Details',icon:Icon(Icons.credit_card_outlined)),
       AccountCard(title: 'Delivery Adress',icon:Icon(Icons.location_on_outlined)),
        AccountCard(title: 'Payment method',icon:Icon(Icons.credit_card_outlined)),
        AccountCard(title: 'Notification',icon:Icon(Icons.notifications)),
        AccountCard(title: 'Help',icon:Icon(Icons.help)),
        AccountCard(title: 'About',icon:Icon(Icons.now_wallpaper_outlined)),




      ],
    )
  );
}
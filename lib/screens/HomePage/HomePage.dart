import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery/screens/AccountPage/AccountPage.dart';
import 'package:grocery/screens/CartPage/CartPage.dart';
import 'package:grocery/screens/ExplorePage/ExplorePage.dart';
import 'package:grocery/screens/FavouritePage/FavouritePage.dart';
import 'package:grocery/screens/ShopPage/ShopPage.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexNumber = 0;
  List pages = [ShopPage,ExplorePage,CartPage,FavouritePage,AccountPage];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body:  SingleChildScrollView(
          child: SafeArea(child:  pages[indexNumber](size,context),)) ,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
          boxShadow:  [
          BoxShadow(
              color: Colors.blue,
              blurRadius: 5,
              offset: Offset(0.5, 4.0))
          ]



        ),
        child: SizedBox(

            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              selectedItemColor: Colors.blue,
              currentIndex:indexNumber,
              onTap: (index) {
                setState(() {
                  indexNumber = index;
                });
              },

              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                   icon: Padding(
                     padding: const EdgeInsets.only(bottom: 5),
                     child: SvgPicture.asset('assets/icons/home_icon.svg',color: indexNumber == 0 ? Colors.blue:Colors.black,),
                   ),
                    label: "Shop",

                ),
                BottomNavigationBarItem(
                    icon:Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset('assets/icons/explore_icon.svg',color: indexNumber == 1 ? Colors.blue:Colors.black,),
                    ),

                    label: "Explore"),
                BottomNavigationBarItem(
                    icon:Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset('assets/icons/cart_icon.svg',color: indexNumber == 2 ? Colors.blue:Colors.black,),
                    ),

                    label: "Cart"),
                BottomNavigationBarItem(
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset('assets/icons/favourite_icon.svg',color: indexNumber == 3 ? Colors.blue:Colors.black,),
                    ),
                    label: "Favourite"),
                BottomNavigationBarItem(
                    icon:Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: SvgPicture.asset('assets/icons/account_icon.svg',color: indexNumber == 4 ? Colors.blue:Colors.black,),
                    ),
                    label: "Account")
              ],
            )),
      ),
    );

  }
}

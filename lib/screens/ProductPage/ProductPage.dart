import 'package:flutter/material.dart';
import 'package:grocery/Constants.dart';
class ProductPage extends StatefulWidget {
  final index;
 const ProductPage({this.index});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(

            children: [
              Stack(
                children: [
                  Container(
                    height: size.height/2.3,
                    decoration: BoxDecoration(
                      color: Color(0xffF2F3F2),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
                    ),
                    width: double.infinity,
                    child: Hero(
                      tag: widget.index,
                      child: Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/images/red_apple_big.png',)),
                    ),
                  ),
                  Positioned(
                      top: size.height/40,
                      left: size.width/20,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios,color: Colors.black,)))
                ],
              ),
                SizedBox(height: 10,),
              Container (
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Text("Natural Red Apple",style: TextStyle(
                          fontSize: size.width/18,
                          fontWeight: FontWeight.w800
                        ),),
                        IconButton(
                            splashRadius: 20,
                            onPressed: (){},
                            icon: Icon(Icons.favorite_outline_outlined,color: Colors.teal,size: 25,))
                      ]
                    ),
                    Text('1kg, Price',style: TextStyle(
                        color: hintColor,
                        fontWeight: FontWeight.w600
                    ),),
                        SizedBox(height: 10,),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  IconButton(
                                      splashRadius: 20,
                                      onPressed:() {
                                        setState(() {
                                          number--;
                                        });
                                      },
                                      icon: Icon(Icons.remove,color: Color(0xff53B175),size: 27,)
                                  ),
                                  SizedBox(width: 2,),
                                  Container(
                                    width: 45,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(width: 0.7,color: hintColor),
                                        borderRadius: BorderRadius.circular(15)
                                    ),
                                    child: Center(child: Text(number.toString(),style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800
                                    ),)),
                                  ),
                                  SizedBox(width: 2,),
                                  IconButton(
                                      splashRadius: 20,
                                      onPressed: (){
                                        setState(() {
                                          number++;
                                        });
                                      },icon: Icon(Icons.add,color: Color(0xff53B175),size: 27,))
                                ]
                            ),
                          ),
                          Text("\$4.99",style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600
                          ),)],
                      ),
                    SizedBox(height: 10,),
                    Divider(color: hintColor,),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Product detail",style: TextStyle(
                          fontSize: size.width/22,
                          fontWeight: FontWeight.w700
                        ),),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text('Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',style: TextStyle(
                      color: hintColor,
                      fontWeight: FontWeight.w600
                    ),),
                      SizedBox(height: 20,),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Center(
                        child: Text("Add to Basket",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 20
                          ),),
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

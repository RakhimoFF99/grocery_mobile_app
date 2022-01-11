import 'package:flutter/material.dart';
import 'package:grocery/screens/HomePage/HomePage.dart';
class WelcomePage extends StatelessWidget {

  const WelcomePage();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                width: double.infinity,
                child: Image.asset('assets/images/welcomeImage.png',fit: BoxFit.fill,),
            ),
            Container(
              height: size.height/2,
              width: double.infinity,

              child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: size.height/8,),
                  Text('Welcome',style: TextStyle(
                    fontSize: size.width/10,
                      color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),),
                  Text('to our store',style: TextStyle(
                      fontSize: size.width/10,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),),
                  SizedBox(height: 5,),
                  Text('Get your grocories in as fast as one hour',style: TextStyle(
                    color: Colors.white.withOpacity(0.7)
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: size.width/10),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(
                                83, 177, 117, 1)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),

                                )
                            )
                        ),
                        onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Text("Get Started",style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                          ),),
                        ),),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

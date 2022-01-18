import 'package:flutter/material.dart';
import 'package:grocery/Constants.dart';

class AccountCard extends StatelessWidget {
  final title;
  final icon;
  const AccountCard({this.title,this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 1,color: Color(0xffE2E2E2)))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
             icon,
              SizedBox(width: 30,),
              Text(title,style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),)
            ],
          ),
          Icon(Icons.arrow_forward_ios_rounded)
        ],
      ),
    );
  }
}

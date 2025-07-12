import 'package:flutter/material.dart';
import 'package:foodapp/core/constant/color.dart';

class CustomAppBarItemsDetails extends StatelessWidget {
    final void Function() btnFun1;
  final void Function() btnFun2;
  const CustomAppBarItemsDetails({super.key, required this.btnFun1, required this.btnFun2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         GestureDetector(
          onTap: btnFun1,
          child: Container(
            height: 50,
            width: 50,
            child: Image.asset("assets/image/arrow.png"),
          ),
        ),
        GestureDetector(
          onTap:btnFun2,
          child: Container(
            height: 40,
            width: 45,
            padding: EdgeInsets.only(left: 5),
            decoration: BoxDecoration(
              color: brown,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              )
            ),
            child: Center(child: Image.asset("assets/image/more.png",height: 45,)),
          ),

        )
      ],
    );
  }
}
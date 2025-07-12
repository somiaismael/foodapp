import 'package:flutter/material.dart';
import 'package:foodapp/controller/itemsdetails_controller.dart';
import 'package:foodapp/core/constant/color.dart';
import 'package:foodapp/data/static/data.dart';
import 'package:foodapp/view/widget/itemsdetails/customappbaritemsdetails.dart';
import 'package:get/get.dart';
import "dart:math" as math;
class ItemsDetails extends StatelessWidget {
  const ItemsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ItemsDetailsController controller=Get.put(ItemsDetailsController());
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBarItemsDetails(btnFun1: (){Get.back();},btnFun2: (){},),
                    RichText(text:TextSpan(children:[
          TextSpan(text: controller.food.name,
          style: TextStyle(fontSize: 30,color: brown,fontWeight: FontWeight.bold)
          ),
           TextSpan(text: "\n${controller.food.name}",
          style: TextStyle(fontSize: 18,color: brown,fontWeight: FontWeight.w400)
          ),
        ] 
        ) ),
          ],
        ) ,),

        Expanded( 
          child: Stack(children: [
          Positioned(
            top: 35,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 30),
              height: 200,
              decoration: BoxDecoration(color: brown,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                topLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("KKal:",style: TextStyle(fontSize: 16,color: white,fontWeight: FontWeight.w800),),
                  SizedBox(height: 5,),
                    Text(controller.food.kal,style: TextStyle(fontSize: 14,color: white,fontWeight: FontWeight.w400),),
                  SizedBox(height: 25,),
                  Text("weight:",style: TextStyle(fontSize: 16,color: white,fontWeight: FontWeight.w800),),
                  SizedBox(height: 5,),
                    Text(controller.food.weight,style: TextStyle(fontSize: 14,color: white,fontWeight: FontWeight.w400),),   
                  ],
              ),
            )),
            Positioned(
              top: 0.0,
              left: 10,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Image.asset(controller.food.image,height: 360,)))
        ],)),
        SizedBox(height: 25),
        Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Details",style: TextStyle(
                      fontSize: 20.0,
                      color: black,
                      fontWeight: FontWeight.w800,
                    ),),
                      SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            controller.food.price,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: black,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40.0,
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0),
                            )),
                        child: Center(
                          child: Text(
                            'Try Promo code',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: brown,
                          size: 30.0,
                        ),
                      ),
                      Container(
                        height: 40.0,
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        decoration: BoxDecoration(
                          color: brown,
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                'Add to Cart',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: white,
                                size: 20.0,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

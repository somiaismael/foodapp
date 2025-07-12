import 'package:flutter/material.dart';
import 'package:foodapp/controller/homepage_controller.dart';
import 'package:foodapp/core/constant/approut.dart';
import 'package:foodapp/core/constant/color.dart';
import 'package:foodapp/data/static/data.dart';
import 'package:foodapp/view/widget/homepage/toptexthomepage.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widget/homepage/customappbar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomepageController());
    return Scaffold(
      backgroundColor: white,
      body:GetBuilder<HomepageController>(builder: (controller)=> SafeArea(child: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            CustomAppBar(btnFun1: (){},btnFun2: (){},),
          
          ],),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [   
              Text(
            "Hi Hira",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
            height: 5,
                    ),
                    Text(
            "Want to order delisios food?",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
               SizedBox(height: 20,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Text(
            "Categories",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
             Text(
            "see All",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
               ],),
               SizedBox(height: 20,),
                Container(
            height: 250,
            // width: 350,
            child: GridView.builder(
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
                crossAxisSpacing: 2,
              mainAxisSpacing: 2,
              childAspectRatio: 1.5

            ) ,
            itemCount: categories.length,
             itemBuilder: (itemBuilder,i){
              return GestureDetector(
                onTap: (){
                  controller.onTapCategory(i);
                },
                child: Container(
                  height: 20,
                 
                  margin: EdgeInsets.only(bottom: 10,right: 10),
                  decoration: BoxDecoration(
                    color: controller.selectedIndex == i?green:gray,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(categories[i].image,height: 30,width: 30,
                      color:controller.selectedIndex == i?white: black,
                      ),
                      SizedBox(height: 10,),
                      Text(
            categories[i].name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,
            color: controller.selectedIndex == i?white: black
            ),),    ],
                  ),
                ),
              );
             }),
          ),
          SizedBox(height: 30,),
           Text(
            "Find Dinnibg food",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),

               ],),
          ),
          //  SizedBox(height: 20,),
          Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(bottom: 25,left: 20),
            physics: BouncingScrollPhysics(),
            itemCount: foods.length,
            itemBuilder: (itembuilder,index){

              return GestureDetector(
              
                onTap: (){
                  Get.toNamed(AppRout.itemsdetails,arguments: {"foodDetails":foods[index]});
                },
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        width: 150,
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: index%2 ==0?brown:gray,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                                foods[index].title,
                                maxLines: 2,
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400,
                                color: index%2 ==0?white:black,),
                      ),
                     
                       Text(
                                foods[index].price,
                                maxLines: 2,
                                style: TextStyle(fontWeight: FontWeight.w900,
                                color: index%2 ==0?white:black,),
                      ),
                
                          ],
                        ),
                
                      ),
                    ),
                    
                       Positioned(
                        top: 0,
                        right: 0,
                        child: Image.asset(foods[index].image,height: 85,))
                  ],
                ),
              );

          })
          )
 
         
        ],
      )
      ),)
    );
  }
}
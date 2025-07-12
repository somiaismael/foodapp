
import 'package:foodapp/core/constant/approut.dart';
import 'package:foodapp/view/screen/homepage.dart';
import 'package:foodapp/view/screen/itemsdetails.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>? rootes=[
  GetPage(name: "/"
  // AppRout.homepage
  , page: ()=>HomePage()),

    GetPage(name:
  AppRout.itemsdetails
  , page: ()=>ItemsDetails()),
];
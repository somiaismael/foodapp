import 'package:foodapp/data/static/data.dart';
import 'package:get/get.dart';

class ItemsDetailsController extends GetxController{
 late Food food;

@override
  void onInit() {
    food=Get.arguments["foodDetails"];
    super.onInit();
  }
}
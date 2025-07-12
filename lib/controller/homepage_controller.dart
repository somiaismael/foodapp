import 'package:get/get.dart';

class HomepageController extends GetxController{
  int selectedIndex= 0 ;

  onTapCategory(int index){
selectedIndex= index;

update();
  }
}
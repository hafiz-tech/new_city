import 'package:new_city/utils/dependencies.dart';

class HomeController extends GetxController{
  var selectedIndex = 0.obs;
  changeIndex(index){
    selectedIndex.value= index;
    update();
  }
}
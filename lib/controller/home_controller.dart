
import 'package:get/get.dart';

class HomeController extends GetxController{
  String name ="hego";

  var index = 0.obs;
  void increaseIndex(){
    index ++;
    print(index);
  }
}
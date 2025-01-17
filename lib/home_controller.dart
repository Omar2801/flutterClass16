import 'package:get/get.dart';

class HomeController extends GetxController{
  int num = 0;

  void incrementNumber(){
    num++;
    update();
  }
}
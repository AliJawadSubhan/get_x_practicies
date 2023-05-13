import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<String> fruits = ["Chery", "Orange", "Apple", "Mango", "Pear"].obs;
  RxList<dynamic> favoriteFruit = [].obs;

  addToFaviorate(String singleFruit) {
    if (!favoriteFruit.contains(singleFruit)) {
      favoriteFruit.add(singleFruit);
    } else {
      favoriteFruit.remove(singleFruit);
    }
  }
}

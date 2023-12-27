import 'package:get/get.dart';
import '../model/product_model.dart';

class CartController extends GetxController {
  var cart = <Product>[].obs;

  int get counted => cart.length;
}

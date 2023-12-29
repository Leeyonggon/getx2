import 'package:get/get.dart';
import '../model/product_model.dart';
import '../data/services.dart';

class Controller extends GetxController {
  var productList = <Product>[].obs; // product class의 변화를 구독

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  int get counted => productList.length;

  void addToitem(Product p) {
    productList.add(p);
  }

  void fetchData() async {
    var products = await Services.fetchProducts();

    if (products != null) {
      productList.value = products;
    }
  }
}

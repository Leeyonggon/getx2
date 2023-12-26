import 'package:getx_shoppoinglist/model/product_model.dart';
import 'package:http/http.dart' as http;

//static이 붙은 변수나 함수는 클래스 객채를 생성하지않고도 사용 이미 메모리에 할당되어있음
class Services {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var reponse = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));

    if (reponse.statusCode == 200) {
      var jsonData = reponse.body;
      return productFromJson(jsonData);
    } else {
      return null;
    }
  }
}

//<List<Product>> Product타입의 List를 나타냄
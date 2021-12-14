import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:delicase/constants/strings.dart';
import 'package:delicase/models/productInfo.dart';

// ignore: camel_case_types
class API_Manager {
  Future<List<ProductModel>> getProducts() async {
    var client = http.Client();
    var products;

    try {
      var response = await client.get(Strings.delicase_url + '/general/getAllProductos?tp_id=0&key_words=');
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        products = productsModelFromJson(jsonMap);
      }
    } catch (exception) {
      return products;
    }

    return products;
  }
}

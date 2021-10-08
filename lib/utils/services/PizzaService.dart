import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pizzahut/modules/Pizza/models/PizzaModel.dart';

const BASE_URL = "http://192.168.1.6:8080/api/pizza/";

Future <List<PizzaModel>> fetchAllPizzas() async {
  final response =  await http.get(Uri.parse(BASE_URL + "getAllPizzas"));

  if(response.statusCode == 200){
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((e) => new PizzaModel.fromjson(e)).toList();
  }
  else{
    throw Exception('Failed to fetch all countable items');
  }
}

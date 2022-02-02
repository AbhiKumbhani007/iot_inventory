import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:iot/models/component.dart';

class Api {
  var client = http.Client();
  Future<List<Component>?> fetchComponent() async {
    debugPrint("inside fetchComponent");
    var response = await client
        .post(Uri.parse('http://10.0.2.2:5556/component/get-all-components'));
    debugPrint("after url call");
    var jsonString = response.body;

    debugPrint("jsonString : $jsonString");
    Map<String, dynamic> map = json.decode(jsonString);
    //debugPrint("map: $map");
    List<dynamic> list = map["response"];
    //debugPrint("list: $list");
    List<Component> components = list.map((json) {
      debugPrint("json: ${json.runtimeType}");
      return Component(
        availableQuantity: int.parse(json["available_quantity"].toString()),
        componentId: int.parse(json["component_id"].toString()),
        componentName: json["component_name"].toString(),
        imgUrl: json["image_url"].toString(),
        totalQuantity: int.parse(json["total_quantity"].toString()),
      );
    }).toList();
    //  debugPrint("components: $components");
    return components;
  }
}

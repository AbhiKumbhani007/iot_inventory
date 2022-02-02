import 'package:flutter/material.dart';

class Component {
  int? componentId;
  String? componentName;
  int? totalQuantity;
  int? availableQuantity;
  String? imgUrl;

  Component(
      {this.componentId,
      this.componentName,
      this.totalQuantity,
      this.availableQuantity,
      this.imgUrl});

  Component.fromJson(Map<String, dynamic> json) {
    componentId = json['component_id'];
    componentName = json['component_name'];
    totalQuantity = json['total_quantity'];
    availableQuantity = json['available_quantity'];
    imgUrl = json['img_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['component_id'] = this.componentId;
    data['component_name'] = this.componentName;
    data['total_quantity'] = this.totalQuantity;
    data['available_quantity'] = this.availableQuantity;
    data['img_url'] = this.imgUrl;
    return data;
  }
}
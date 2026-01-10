import 'package:coursflutter/data/model/ussdCode_model.dart';
import 'package:coursflutter/domain/entities/categorie.dart';
import 'package:flutter/cupertino.dart';

class CategorieModel extends Categorie {

  CategorieModel ({
    required String name,
    required IconData icon,
    required List<UssdCodeModel> code
}) : super (
    name: name,
    icon: icon,
    code: code,
  );

  factory CategorieModel.fromJson(Map<String, dynamic> json) {
    return CategorieModel(
        name: json['name'],
      icon: json['icon'],
      code: json['icon']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'icon': icon.codePoint,
      'code': code.map((f) => f.toJson()).toList(),
    };
  }


}
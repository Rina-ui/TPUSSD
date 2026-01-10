import 'package:coursflutter/domain/entities/categorie.dart';
import 'package:coursflutter/domain/entities/ussd_code.dart';
import 'package:flutter/cupertino.dart';

class categorieModel extends categorie {

  categorieModel ({
    required String name,
    required IconData icon,
    required List<ussdCode> code
}) : super (
    name: name,
    icon: icon,
    code: code,
  );

  factory categorieModel.fromJson(Map<String, dynamic> json) {
    return categorieModel(
        name: json['name'],
      icon: json['icon'],
      code: json['icon']
    );
  }

}
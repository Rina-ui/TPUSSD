import 'package:coursflutter/domain/entities/ussd_code.dart';
import 'package:coursflutter/domain/entities/ussd_field.dart';
import 'package:flutter/cupertino.dart';

class ussdCodeModel extends ussdCode {

  ussdCodeModel({
    required String code,
    required String description,
    required IconData icon,
    required List<UssdField> fields,
}) : super (
    code: code,
    description: description,
    icon: icon,
  );

  factory ussdCodeModel.fromJson(Map<String, dynamic> json) {
    return ussdCodeModel(
        code: json['code'],
      description: json['descirption'],
      icon: json['icon'],
      fields: json['fileds']
    );
  }
}
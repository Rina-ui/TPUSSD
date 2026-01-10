import 'package:coursflutter/data/model/ussdField_model.dart';
import 'package:coursflutter/domain/entities/ussd_code.dart';
import 'package:flutter/material.dart';

class UssdCodeModel extends UssdCode {
  final List<UssdfieldModel> fields;

  UssdCodeModel({
    required String code,
    required String description,
    required IconData icon,
    required this.fields,
  }) : super(
    code: code,
    description: description,
    icon: icon,
  );

  factory UssdCodeModel.fromJson(Map<String, dynamic> json) {
    return UssdCodeModel(
      code: json['code'],
      description: json['description'],
      icon: IconData(
        json['icon'],
        fontFamily: 'MaterialIcons',
      ),
      fields: (json['fields'] as List)
          .map((f) => UssdfieldModel.fromJson(f))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'description': description,
      'icon': icon.codePoint,
      'fields': fields.map((f) => f.toJson()).toList(),
    };
  }
}

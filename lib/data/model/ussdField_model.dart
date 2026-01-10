import 'package:coursflutter/domain/entities/ussd_field.dart';
import 'package:flutter/material.dart';

class UssdfieldModel extends UssdField{

   UssdfieldModel ({
    required String name,
    required TextInputType type,
    required bool isObscured
}) : super (
    name: name,
     type: type,
     isObscured: isObscured
  );

  factory UssdfieldModel.fromJson(Map<String, dynamic> json) {
    return UssdfieldModel(
      name: json['name'],
      type: TextInputType.values.firstWhere(
          (e) {
            return e.toString() == json['type'];
          }
      ),
      isObscured: json['isObscured'] ?? false,
    );
  }

   Map<String, dynamic> toJson() {
     return {
       'name': name,
       'type': type.toString(),
       'isObscured': isObscured,
     };
   }


}
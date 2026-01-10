import 'package:coursflutter/domain/entities/ussd_field.dart';
import 'package:flutter/cupertino.dart';

class ussdCode {
  final String code;
  final String description;
  final IconData icon;
  final List<UssdField> fields;

  ussdCode({
    required this.code,
    required this.description,
    required this.icon,
    this.fields = const []
});

}
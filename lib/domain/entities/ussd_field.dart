import 'package:flutter/services.dart';

class UssdField {
  final String name;
  final TextInputType type;
  final bool isObscured;

  UssdField ({
    required this.name,
    required this.type,
    required this.isObscured,
});

}
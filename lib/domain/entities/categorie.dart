import 'package:coursflutter/domain/entities/ussd_code.dart';
import 'package:flutter/cupertino.dart';

class Categorie {
  final String name;
  final IconData icon;
  final List<UssdCode> code;

  Categorie ({
    required this.name,
    required this.icon,
    required this.code
});
}
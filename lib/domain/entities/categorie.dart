import 'package:coursflutter/domain/entities/ussd_code.dart';
import 'package:flutter/cupertino.dart';

class categorie {
  final String name;
  final IconData icon;
  final List<ussdCode> code;

  categorie ({
    required this.name,
    required this.icon,
    required this.code
});
}
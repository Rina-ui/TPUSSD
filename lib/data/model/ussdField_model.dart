import 'package:coursflutter/domain/entities/ussd_field.dart';

class UssdfieldModel extends UssdField{

   UssdfieldModel ({
    required String name,
    required String type,
    required bool isObscured
}) : super (
    name: name,
     type: type,
     isObscured: isObscured
  );

  factory UssdfieldModel.fromJson(Map<String, dynamic> json) {
    return UssdfieldModel(
      name: json['name'],
      type: json['type'],
      isObscured: json['isObscured']
    );
  }

}
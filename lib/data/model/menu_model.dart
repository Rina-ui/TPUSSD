import 'package:coursflutter/domain/entities/menu.dart';

class MenuModel extends Menu {
  const MenuModel({
    required int id,
    required String titre,
    required String code,
    required String description,
    required String categorie
}) : super (
    id: id,
    titre: titre,
    code: code,
    description: description,
    categorie: categorie
  );

  factory MenuModel.fromJson(Map<String, dynamic> json) {
    return MenuModel(
      id: json['id'],
      titre: json['titre'],
      code: json['code'],
      description: json['description'],
      categorie: json['categorie'],
    );
  }

}
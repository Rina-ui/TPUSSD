import 'package:coursflutter/domain/entities/menu.dart';
import '../../core/error/Failure.dart';

abstract class Ussdrepository {
  Future<Either<Failure, Menu>> ajouterCode(String code);


}
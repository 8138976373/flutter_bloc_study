import 'package:injectable/injectable.dart';

@LazySingleton()
class AssetsUtilsService {
  String getImagePath(String imageName) {
    return 'assets/images/$imageName';
  }
}

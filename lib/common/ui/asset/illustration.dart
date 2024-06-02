import 'package:tennis_fun/common/ui/asset/interface.dart';

enum Illustration implements ImageAsset {
  splash("splash");

  final String fileName;

  const Illustration(this.fileName);

  @override
  String getFilePath(String extension) {
    return "$fileName.$extension";
  }

  @override
  String getPng() {
    return getFilePath("png");
  }

  @override
  String getSvg() {
    return getFilePath("svg");
  }
}
abstract class AppAsset {
  String getFilePath(String extension);
}

abstract class ImageAsset extends AppAsset {
  String getPng();

  String getSvg();
}
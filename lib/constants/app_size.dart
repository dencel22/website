import 'package:website/export.dart';

class AppSize {
  static const desktopSize = 1260;
  static const tabletSize = 768;
  static const mobileSize = 390;
}

class ImagePath {
  static const String dart = 'assets/images/dart.png';
  static const String flutter = 'assets/images/flutter.png';
  static const String git = 'assets/images/git.png';
  static const String github = 'assets/images/github.png';
  static const String logo = 'assets/icons/logo.png';
  static const String self1 = 'assets/images/dart.png';
  static const String uiDesign = 'assets/images/ui_design';
  static const String mySelf = 'assets/images/my_self.jpeg';
  static const String hello = 'assets/icons/hello.png';
  static const String developer = 'assets/icons/developer.png';
  static const String flutterIcon = 'assets/icons/flutter_icon.png';
  static const String dartIcon = 'assets/icons/dart_icon.png';
}

double fontHeader(double width) {
  if (width >= AppSize.tabletSize) {
    return 57.0;
  } else if (width >= AppSize.mobileSize) {
    return 22.0.spMax;
  } else {
    return 40.0;
  }
}

double horizontalPadding(double width) {
  if (width > AppSize.desktopSize) {
    return 0;
  } else if (width > AppSize.tabletSize) {
    return 28.0;
  } else {
    return 20.0;
  }
}

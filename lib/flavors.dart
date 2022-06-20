import 'package:flutter/material.dart';

enum Flavor {
  DEV,
  PROD,
  HOM,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static MaterialColor get color {
    switch (appFlavor) {
      case Flavor.PROD:
        return Colors.pink;
      case Flavor.HOM:
        return Colors.orange;
      default:
        return Colors.purple;
    }
  }

  static String get title {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'ESTRELA';
      case Flavor.HOM:
        return 'App HOM...';
      default:
        return 'App DEV...';
    }
  }

    static String get baseUrl {
    switch (appFlavor) {
      case Flavor.PROD:
        return 'http://rangeldev.com.br/prod';
      case Flavor.HOM:
        return 'http://rangeldev.com.br/hom';
      default:
        return 'http://rangeldev.com.br/dev';
    }
  }
}

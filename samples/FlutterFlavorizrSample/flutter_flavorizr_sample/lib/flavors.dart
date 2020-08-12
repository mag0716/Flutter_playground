enum Flavor {
  APP1,
  APP2,
}

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.APP1:
        return 'App 1';
      case Flavor.APP2:
        return 'App 2';
      default:
        return 'title';
    }
  }

}

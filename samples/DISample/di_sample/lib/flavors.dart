enum Flavor {
  PRODUCT,
  STAGING,
  DEV,
}

class F {
  static Flavor appFlavor;

  static String get title {
    switch (appFlavor) {
      case Flavor.PRODUCT:
        return 'DI Sample';
      case Flavor.STAGING:
        return 'DI Sample(staging)';
      case Flavor.DEV:
        return 'DI Sample(dev)';
      default:
        return 'title';
    }
  }

}

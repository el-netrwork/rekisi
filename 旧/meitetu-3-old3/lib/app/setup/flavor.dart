enum Flavor {
  develop,
  production;

  static Flavor getFromString(String flavorString) => switch (flavorString) {
        'develop' => Flavor.develop,
        'production' => Flavor.production,
        _ => throw Exception('Unknown flavor string: $flavorString'),
      };
}

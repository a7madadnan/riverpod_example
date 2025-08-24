class Endpoints {
  // base url
  static const String jokes =
      "https://v2.jokeapi.dev/joke/Programming?type=single";

  static const String product = 'https://fakestoreapi.com/products/';

  // receiveTimeout
  static const Duration receiveTimeout = Duration(seconds: 1500);

  // connectTimeout
  static const Duration connectionTimeout = Duration(seconds: 30000);
}

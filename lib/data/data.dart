class ProductModel {
  final String image;
  final String title;
  final double price;
  final String dec;
  ProductModel({
    required this.image,
    required this.title,
    required this.price,
    required this.dec,
  });
}

List<ProductModel> productList = [
  ProductModel(
    image: 'assets/images/image1.jpg',
    title: "Bonsai",
    price: 14,
    dec:
        "For plant lovers, a cactus is perfect for the less green-fingered as you only need to water moderately, it is in fact better to underwater them than it is to overwater.",
  ),
  ProductModel(
    image: 'assets/images/image2.jpg',
    title: "Cactus",
    price: 21,
    dec:
        "For plant lovers, a cactus is perfect for the less green-fingered as you only need to water moderately, it is in fact better to underwater them than it is to overwater.",
  ),
  ProductModel(
    image: 'assets/images/image3.jpg',
    title: "Lemon",
    price: 34,
    dec:
        "For plant lovers, a cactus is perfect for the less green-fingered as you only need to water moderately, it is in fact better to underwater them than it is to overwater.",
  ),
  ProductModel(
    image: 'assets/images/image4.jpg',
    title: "Aloe vera",
    price: 16,
    dec:
        "For plant lovers, a cactus is perfect for the less green-fingered as you only need to water moderately, it is in fact better to underwater them than it is to overwater.",
  ),
  ProductModel(
    image: 'assets/images/image5.jpg',
    title: "Bonsai",
    price: 13,
    dec:
        "For plant lovers, a cactus is perfect for the less green-fingered as you only need to water moderately, it is in fact better to underwater them than it is to overwater.",
  ),
  ProductModel(
    image: 'assets/images/image3.jpg',
    title: "Bonsai",
    price: 15,
    dec:
        "For plant lovers, a cactus is perfect for the less green-fingered as you only need to water moderately, it is in fact better to underwater them than it is to overwater.",
  ),
];

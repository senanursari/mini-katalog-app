class Product {
  final int id;
  final String name;
  final String tagline;
  final String description;
  final String price;
  final String currency;
  final String image;
  final Map<String, dynamic> specs;

  Product({
    required this.id,
    required this.name,
    required this.tagline,
    required this.description,
    required this.price,
    required this.currency,
    required this.image,
    required this.specs,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      name: (json['name'] ?? '').toString(),
      tagline: (json['tagline'] ?? '').toString(),
      description: (json['description'] ?? '').toString(),
      price: (json['price'] ?? '').toString(),
      currency: (json['currency'] ?? '').toString(),
      image: (json['image'] ?? '').toString(),
      specs: Map<String, dynamic>.from(json['specs'] ?? {}),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'tagline': tagline,
      'description': description,
      'price': price,
      'currency': currency,
      'image': image,
      'specs': specs,
    };
  }
}
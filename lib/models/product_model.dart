class Product {
  final String name;
  final String? description;
  final String mrp;
  final String unit;
  final List<String> images;

  Product({
    required this.name,
    required this.description,
    required this.mrp,
    required this.unit,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      description: json['description'],
      mrp: json['MRP'],
      unit: json['unit'],
      images: List<String>.from(json['images']),
    );
  }
}


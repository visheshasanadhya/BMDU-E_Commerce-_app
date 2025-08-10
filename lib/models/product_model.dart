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
      name: json['name']?.toString() ?? '',
      description: json['description']?.toString(),
      mrp: json['MRP']?.toString() ?? '',
      unit: json['unit']?.toString() ?? '',
      images: (json['images'] as List<dynamic>?)?.map((e) => e.toString()).toList() ?? [],
    );
  }

  // helper: empty product fallback
  factory Product.empty() {
    return Product(name: 'Unknown', description: null, mrp: '0', unit: '', images: []);
  }
}

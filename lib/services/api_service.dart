import 'dart:convert';
import '../models/product_model.dart';

class ApiService {
  static Future<List<Product>> fetchProducts() async {
    // Simulating API JSON response (your provided data)
    const jsonString = '''
    {
      "status": true,
      "message": "Product images fetched successfully",
      "data": {
        "details": [
          {
            "name": "haldidiram",
            "description": null,
            "MRP": "50",
            "unit": "pcs",
            "images": [
              "https://bmdublog.com/my_mobi_mart/public/storage/products/U87hIO2cSvw92iVsWEE89IcWevi1tyKqc6BVHZM1.jpg",
              "https://bmdublog.com/my_mobi_mart/public/storage/products/PwMSOT9tvazgTjgTnLuN5txAq8ZptZTeDhuvucsD.jpg",
              "https://bmdublog.com/my_mobi_mart/public/storage/products/FDSyy2bgACXHK1LR2jqH5GGlxHxt0WR2T3XD3v0x.jpg"
            ]
          },
          {
            "name": "Palak maggi",
            "description": "green maggi",
            "MRP": "28",
            "unit": "units",
            "images": [
              "https://bmdublog.com/my_mobi_mart/public/storage/products/bjGcGROOU89U1awTr6xp9ntvyi7OLXS8RgGOhBsp.jpg",
              "https://bmdublog.com/my_mobi_mart/public/storage/products/Tat90gYb0m0Z4VvtWv7eRfwnGMONmddzUKIS8Gwf.jpg",
              "https://bmdublog.com/my_mobi_mart/public/storage/products/6zQSOTykjROq9mgigPlPEZKouQLj7GpYDZtFEb1k.jpg"
            ]
          },
          {
            "name": "250 ltr sunflower oil",
            "description": "this is best oil",
            "MRP": "135",
            "unit": "liters",
            "images": [
              "https://bmdublog.com/my_mobi_mart/public/storage/products/EV1SSPQQzNtCbZUpRUHmaysj4hxngFWODPNyh4hk.jpg",
              "https://bmdublog.com/my_mobi_mart/public/storage/products/HQTVEfRRkzcKP0STxvqLmyMwT4i5KJq1NUVmUdc0.jpg",
              "https://bmdublog.com/my_mobi_mart/public/storage/products/6zQSOTykjROq9mgigPlPEZKouQLj7GpYDZtFEb1k.jpg"
            ]
          }
        ]
      }
    }
    ''';

    final Map<String, dynamic> jsonResponse = json.decode(jsonString);
    final List<dynamic> productList = jsonResponse['data']['details'];
    return productList.map((json) => Product.fromJson(json)).toList();
  }
}

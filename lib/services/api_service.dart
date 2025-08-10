import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/product_model.dart';

class ApiService {
  static const _baseUrl = 'https://bmdublog.com/my_mobi_mart/api/get-products-details';

  /// Fetch products from real API.
  static Future<List<Product>> fetchProducts() async {
    final uri = Uri.parse(_baseUrl);
    final response = await http.get(uri).timeout(const Duration(seconds: 15));
    if (response.statusCode == 200) {
      final Map<String, dynamic> jsonResponse = json.decode(response.body);
      if (jsonResponse['status'] == true && jsonResponse['data'] != null) {
        final List<dynamic> details = jsonResponse['data']['details'] ?? [];
        return details.map((e) => Product.fromJson(Map<String, dynamic>.from(e))).toList();
      } else {
        throw Exception(jsonResponse['message'] ?? 'Unexpected API response');
      }
    } else {
      throw Exception('Failed to fetch products: ${response.statusCode}');
    }
  }
}

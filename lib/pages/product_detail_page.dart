import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/product_model.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;
  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold) )),
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            width: double.infinity,
            child: product.images.isNotEmpty
                ? CarouselSlider(
              options: CarouselOptions(
                height: 300,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,

                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                autoPlay: true,
              ),
              items: product.images.map((image) {
                return Builder(
                  builder: (context) => ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      image,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: Colors.grey[300],
                        child: const Icon(Icons.broken_image, size: 64, color: Colors.grey),
                      ),
                    ),
                  ),
                );
              }).toList(),
            )
                : Container(
              color: Colors.grey[300],
              child: const Icon(Icons.image, size: 64, color: Colors.grey),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(product.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              if (product.description != null) Text(product.description!, style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 12),
              Text("Price: ₹${product.mrp} per ${product.unit}", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green)),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {

                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Added to cart (demo)')));
                },
                icon: const Icon(Icons.shopping_cart),
                label: const Text('Add to Cart'),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green, minimumSize: const Size(double.infinity, 50)),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

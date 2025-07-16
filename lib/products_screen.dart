import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  final String category;

  ProductsScreen({required this.category});

  final List<Map<String, dynamic>> products = [
    {'name': 'قميص رجالي', 'price': '150 جنيه', 'image': Icons.checkroom},
    {'name': 'سماعة بلوتوث', 'price': '250 جنيه', 'image': Icons.headphones},
    {'name': 'توصيل سريع', 'price': '50 جنيه', 'image': Icons.delivery_dining},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('منتجات $category'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: products.length,
        itemBuilder: (context, index) {
          var product = products[index];
          return Card(
            elevation: 3,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Icon(product['image'], size: 40, color: Colors.teal),
              title: Text(product['name']),
              subtitle: Text(product['price']),
              trailing: ElevatedButton(
                onPressed: () {
                  // هنا سيتم إضافة المنتج إلى السلة
                },
                child: Text('إضافة'),
              ),
            ),
          );
        },
      ),
    );
  }
}

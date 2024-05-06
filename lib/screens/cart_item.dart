// cart_item.dart
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String name;
  final double rating;
  final String price;
  final bool hasDiscount;

  CartItem({required this.name, required this.rating, required this.price, this.hasDiscount = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'Rating: $rating',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Text(
              price,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            if (hasDiscount)
              Text(
                'Discount: 69% OFF',
                style: TextStyle(fontSize: 14, color: Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
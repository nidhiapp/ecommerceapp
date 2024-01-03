import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductCorousel extends StatelessWidget {
  const ProductCorousel({super.key, required this.products});
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                ProductCard(product:products[index]),
              ],
            );
          }),
    );
  }
}

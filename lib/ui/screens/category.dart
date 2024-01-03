import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/ui/widgets/custom_app_bar.dart';
import 'package:ecommerce/ui/widgets/custom_navigation_bar.dart';
import 'package:ecommerce/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> categoryProducts = ProductModel.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppBar(title: category.name),
      bottomNavigationBar: CustomNavigationBar(),
      body: GridView.builder(
          itemCount: categoryProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.15),
          itemBuilder: (context, index) {
            return Center(
                child: ProductCard(product: categoryProducts[index]));
          }),
    );
  }
}

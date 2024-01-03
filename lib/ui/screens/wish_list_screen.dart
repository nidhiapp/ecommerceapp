import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/ui/widgets/custom_app_bar.dart';
import 'package:ecommerce/ui/widgets/custom_navigation_bar.dart';
import 'package:ecommerce/ui/widgets/hero_corousel_card.dart';
import 'package:ecommerce/ui/widgets/product_card.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key,});
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "wishlist"),
      bottomNavigationBar: CustomNavigationBar(),
      body: GridView.builder(
          itemCount: ProductModel.products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1, childAspectRatio: 1.3),
          itemBuilder: (context, index) {
            return Center(child: ProductCard(widthfactor: 1.2,
              product: ProductModel.products[index],
              leftPosition: 200,
              isWishList: true,
              ));
          }),
    );
  }
}

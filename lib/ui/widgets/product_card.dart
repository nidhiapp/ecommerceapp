import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_textstyles.dart';
import 'package:ecommerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  ProductCard(
      {super.key,
      required this.product,
      this.widthfactor = 2.5,
      this.leftPosition=10,
      this.isWishList = false});
  final ProductModel product;
  final double widthfactor;
  final bool isWishList;
  final double leftPosition;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.product, (route) => false,
            arguments: product);
      },
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / widthfactor,
            height: 150,
            child: Image.network(
              product.imgUrl,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 7,
            left: leftPosition,
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5 - 10,
              height: 80,
              decoration: BoxDecoration(color: AppColors.blackCol),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: AppStyle.latoBoldTwentyWhite,
                        ),
                        Text(product.price.toString(),
                            style: AppStyle.latoBoldTwentyWhite)
                      ],
                    ),
                    Icon(
                      Icons.add_circle,
                      color: AppColors.whiteCol,
                    ),
                    isWishList ? Icon(Icons.remove_circle,color: AppColors.whiteCol,) : Icon(null)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

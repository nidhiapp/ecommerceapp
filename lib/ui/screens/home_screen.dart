import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/ui/widgets/custom_app_bar.dart';
import 'package:ecommerce/ui/widgets/custom_navigation_bar.dart';
import 'package:ecommerce/ui/widgets/hero_corousel_card.dart';
import 'package:ecommerce/ui/widgets/product_corousels.dart';
import 'package:ecommerce/ui/widgets/section_title.dart';
import 'package:ecommerce/utils/app_texts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      appBar: const CustomAppBar(
        title: AppTexts.vibeMart,
      ),
      bottomNavigationBar: const CustomNavigationBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1.5,
                  viewportFraction: 0.8,
                  enlargeFactor: 0.1,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true),
              items: CategoryModel.categories
                  .map((category) => HeroCarouselCard(category: category))
                  .toList()),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.only(left:20.0),
              child: SectionTitle(title: "RECOMMENDED"),
            ),

              //product section
           ProductCorousel(products: ProductModel.products.where((products) =>products.isRecommended).toList()),
            
            const SizedBox(height: 20,),
              //most popular section
            const Padding(
              padding: EdgeInsets.only(left:20.0),
              child: SectionTitle(title: "MOST POPULAR"),
            ),

             ProductCorousel(products: ProductModel.products.where((products) =>products.isPopular).toList()),

            ],
          )
        ],
      ),
    );
  }
}

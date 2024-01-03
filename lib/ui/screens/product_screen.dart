import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/ui/widgets/custom_app_bar.dart';
import 'package:ecommerce/ui/widgets/hero_corousel_card.dart';
import 'package:ecommerce/ui/widgets/section_title.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_textstyles.dart';
import 'package:flutter/material.dart';
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.product});
final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        title: product.name ),
        bottomNavigationBar: BottomAppBar(height: 60,
          color: AppColors.purpleCol,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [InkWell(onTap:(){

          } ,
            child: Icon(Icons.share,color: AppColors.whiteCol,size: 30,),),
            InkWell(onTap: () {
              
            },child: Icon(Icons.favorite,color: AppColors.whiteCol,size: 30,),
            ),
            Container(color: AppColors.whiteCol,
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
              child: Text("ADD TO CART",style: AppStyle.latoSixFourtyPurple,),)
            ],
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 1.5,
                  viewportFraction: 0.8,
                  enlargeFactor: 0.1,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true),
              items: ProductModel.products
                  .map((category) => HeroCarouselCard(product: product,))
                  .toList()),
             //  HeroCarouselCard(product: product,),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal:10.0),
             child: Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                SizedBox(height: 20,),
                
                Stack(alignment: Alignment.topCenter,
                  children: [Container(height: 60,
                    color: AppColors.greyCol,
                  
                    ),
                    Container(margin: EdgeInsets.only(right: 5),
                      height: 50 ,color:AppColors.purpleCol,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      Text(product.name,style: AppStyle.latoBoldTwentyWhite,),
                      SizedBox(width: 50,),
                      Text(product.price.toString(),style: AppStyle.latoBoldTwentyWhite,)
                    ],), )
                    ]
                ),
            SizedBox(height: 10,),
                 ExpansionTile(title: SectionTitle(title:"Product Information"),
                 initiallyExpanded: true,
                 children: [
                   ListTile(
                   title: Text("""soft drink, any of a class of nonalcoholic beverages, usually but not necessarily carbonated, normally containing a natural or artificial sweetening agent, edible acids, natural or artificial flavours, and sometimes juice."""),
                 )

                 ],
                 ),
                 SizedBox(height: 10,),
                ExpansionTile(title: SectionTitle(title: "Delivery Information"),
                initiallyExpanded: true,
                children: [
                  ListTile(title: Text("cnncncncnc"),)
                ],
                )
               ],
             ),
           )
        ],),
    );
  }
}
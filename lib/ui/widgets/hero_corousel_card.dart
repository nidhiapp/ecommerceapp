import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_textstyles.dart';
import 'package:ecommerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class HeroCarouselCard extends StatelessWidget {
  const HeroCarouselCard({super.key,  this.category,this.product});
  final CategoryModel? category;
  final ProductModel? product;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {if(this.product==null){
        Navigator.pushNamedAndRemoveUntil(
            context, RoutesName.category, (route) => false,
            arguments: category);
      }
      
      },
      child: Container(
        margin: EdgeInsets.all(5.0),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(product==null?category?.imgUrl??"":product?.imgUrl??" ", fit: BoxFit.cover, width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.blackCol,
                          AppColors.zeroCorCol,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(product==null?category?.name??"":"",
                        style: AppStyle.latoBoldTwentyWhite),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}

import 'package:ecommerce/models/category_model.dart';
import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/ui/screens/cart.dart';
import 'package:ecommerce/ui/screens/category.dart';
import 'package:ecommerce/ui/screens/home_screen.dart';
import 'package:ecommerce/ui/screens/product_screen.dart';
import 'package:ecommerce/ui/screens/splash_screen.dart';
import 'package:ecommerce/ui/screens/wish_list_screen.dart';
import 'package:ecommerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static MaterialPageRoute<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case RoutesName.cart:
        return MaterialPageRoute(builder: (context) => const CartScreen());
      case RoutesName.product:
        ProductModel product = settings.arguments as ProductModel;
        return MaterialPageRoute(
            builder: (context) => ProductScreen(
                  product: product,
                ));

      case RoutesName.category:
        CategoryModel category = settings.arguments as CategoryModel;
        return MaterialPageRoute(
            builder: (context) => CategoryScreen(
                  category: category,
                ));

      case RoutesName.wishList:
        return MaterialPageRoute(builder: (context) => WishListScreen());

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text("no route is defined")),
          );
        });
    }
  }
}

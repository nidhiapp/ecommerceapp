import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String name;
  final String category;
  final String imgUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

   ProductModel({
    required this.name,
    required this.category,
    required this.imgUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });
  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, category, imgUrl, price, isPopular, isRecommended];

 static List<ProductModel> products = [
    ProductModel(name: "1.TU", category:"Soft drinks", imgUrl: "https://w7.pngwing.com/pngs/945/391/png-transparent-thums-up-soda-bottle-illustration-coca-cola-fizzy-drinks-beer-pepsi-cold-drink-beer-bottle-cola-cola-wars.png", price: 40.0, isRecommended: true, isPopular: false),
    ProductModel(name: "2.mirchi", category: "vegetables", imgUrl: "https://seed2plant.in/cdn/shop/products/biggreenchilliseeds.jpg?v=1606738066", price:30.0, isRecommended:true, isPopular: true),
    ProductModel(name: "3.chips", category: "snacks", imgUrl: "https://m.media-amazon.com/images/W/MEDIAX_792452-T2/images/I/41gJFENx3KS._AC_UF1000,1000_QL80_.jpg", price: 20.0, isRecommended:true, isPopular: true),
    ProductModel(name: "4.dettol", category: "cleanliness", imgUrl: "https://m.media-amazon.com/images/I/514oc3SHvuL._SX679_.jpg", price: 30.0, isRecommended: true, isPopular: false)
  ];
}

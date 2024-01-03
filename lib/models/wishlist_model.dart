import 'package:ecommerce/models/product_model.dart';
import 'package:equatable/equatable.dart';

class WishList extends Equatable {
  final List<ProductModel> wishProd;

  const WishList({this.wishProd = const <ProductModel>[]});
  @override
  // TODO: implement props
  List<Object?> get props =>[wishProd];
}

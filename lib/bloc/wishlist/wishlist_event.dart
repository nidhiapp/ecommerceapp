import 'package:ecommerce/models/product_model.dart';
import 'package:equatable/equatable.dart';

abstract class WishListEvent extends Equatable {
  const WishListEvent();
  @override
  List<Object> get props => [];
}

class StartWishList extends WishListEvent {}

class AddToWishList extends WishListEvent {
  final ProductModel product;
  const AddToWishList(this.product);
  List<Object> get props => [product];
}
class RemoveFromWishList extends WishListEvent {
  final ProductModel product;
  const RemoveFromWishList(this.product);
  List<Object> get props => [product];
}
import 'package:ecommerce/models/wishlist_model.dart';
import 'package:equatable/equatable.dart';

abstract class WishListState extends Equatable {
  const WishListState();

  @override
  List<Object> get props => [];
}

class WishListInitial extends WishListState {}


class WishListLoading extends WishListState {
 final bool isLoding;

 WishListLoading({required this.isLoding});
}


class WishListLoaded extends WishListState {
  final WishList wishlist;
  WishListLoaded({this.wishlist = const WishList()});

  @override
  List<Object> get props => [wishlist];
}

class WishListError extends WishListState {}

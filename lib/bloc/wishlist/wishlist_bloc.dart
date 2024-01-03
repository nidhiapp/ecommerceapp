import 'package:ecommerce/models/product_model.dart';
import 'package:ecommerce/models/wishlist_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ecommerce/bloc/wishlist/wishlist_event.dart';
import 'package:ecommerce/bloc/wishlist/wishlist_state.dart';

class WishListBloc extends Bloc<WishListEvent, WishListState> {
  WishListBloc() : super(WishListInitial()) {
    on((event, emit) {});

    on<StartWishList>(_onStartWishList);
    on<AddToWishList>(_onAddToWishList);
    on<RemoveFromWishList>(_onRemoveFromWishList);
  }
  void _onStartWishList(
      StartWishList event, Emitter<WishListState> emit) async {
    emit(WishListLoading(isLoding: true));
    try {
      await Future.delayed(Duration(microseconds: 3)).then((value) {
        // emit(WishListLoaded(wishlist: WishList(wishProd:)));
      });
    } catch (e) {}
  }

  void _onAddToWishList(AddToWishList event, Emitter<WishListState> emit) {
    if (state is WishListLoaded) {
      emit(WishListLoaded(wishlist: WishList(
        wishProd: List.from((state as WishListLoaded).wishlist.wishProd)..add(event.product))));
    }
  }

  void _onRemoveFromWishList(
      RemoveFromWishList event, Emitter<WishListState> emit) {
        if (state is WishListLoaded) {
      emit(WishListLoaded(wishlist: WishList(
        wishProd: List.from((state as WishListLoaded).wishlist.wishProd)..remove(event.product))));
    }
      }
}

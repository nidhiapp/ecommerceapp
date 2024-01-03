import 'package:ecommerce/utils/app_images.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class CategoryModel extends Equatable {
  final String name;
  final String imgUrl;

  const CategoryModel({required this.imgUrl, required this.name});

  @override
  // TODO: implement props
  List<Object?> get props => [name, imgUrl];

  static List<CategoryModel> categories = [
    CategoryModel( name : "cleanliness", imgUrl:AppImages.cleanliness ),
    CategoryModel( name : "snacks", imgUrl:AppImages.snacks ),
    CategoryModel( name : "soft drinks", imgUrl:AppImages.softdrinks ),
    CategoryModel( name : "vegetables", imgUrl:AppImages.vegetables ),




  ];
}

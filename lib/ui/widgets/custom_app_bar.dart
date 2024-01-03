import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/app_textstyles.dart';
import 'package:ecommerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(automaticallyImplyLeading: true,
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        child: Text(
          title,
          style: AppStyle.latoEightThirtyWhite,
        ),
        decoration: BoxDecoration(color: AppColors.purpleCol),
      ),
      elevation: 0,
      backgroundColor: AppColors.appBarCol,
      actions: [
        Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, RoutesName.wishList, (route) => false);
            },
            icon: Icon(
              Icons.favorite,
              color: AppColors.purpleCol,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50.0);
}

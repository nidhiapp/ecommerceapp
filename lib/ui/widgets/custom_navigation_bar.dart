import 'package:ecommerce/utils/app_colors.dart';
import 'package:ecommerce/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: AppColors.purpleCol,
      child: SizedBox(
        height: 52,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: AppColors.whiteCol,
                size: 45,
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, RoutesName.home, (route) => false);
              },
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: AppColors.whiteCol,
                  size: 45,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: AppColors.whiteCol,
                  size: 45,
                ))
          ],
        ),
      ),
    );
  }
}

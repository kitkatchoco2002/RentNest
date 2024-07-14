import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentnest/commons/widgets/appbar/appbar.dart';
import 'package:rentnest/commons/widgets/icons/circular_icon.dart';
import 'package:rentnest/commons/widgets/layouts/grid_layout.dart';
import 'package:rentnest/commons/widgets/products/product_cards/product_card_vertical.dart';
import 'package:rentnest/features/shop/screens/home/home.dart';
import 'package:rentnest/utils/constants/sizes.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RAppBar(
        title: Text("Favorites",
            style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          RCircularIcon(
            icon: Icons.add,
            onPressed: () => Get.to(const HomeScreen()),
            backgroundColor: Colors.transparent,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(RSizes.defaultSpace),
          child: RGridLayout(itemCount: 8, itemBuilder: (_, index) => const RProductCardVertical(),),
        ),
      ),
    );
  }
}

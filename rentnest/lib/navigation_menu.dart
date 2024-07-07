import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentnest/features/shop/screens/home/home.dart';
import 'package:rentnest/features/shop/screens/store/store.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 1,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected:(index) => controller.selectedIndex.value = index ,
          destinations: const[
            NavigationDestination(icon: Icon(Icons.home_filled), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.shopping_bag_rounded), label: 'Store'),
            NavigationDestination(icon: Icon(Icons.favorite_rounded), label: 'Favorites'),
            NavigationDestination(icon: Icon(CupertinoIcons.person_crop_circle), label: 'User'),
          ],
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screen = [const HomeScreen(), const StoreScreen(), Container(color: Colors.yellow,), Container(color: Colors.orange,)];
}
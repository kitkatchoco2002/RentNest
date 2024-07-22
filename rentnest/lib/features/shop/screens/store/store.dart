import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/appbar/appbar.dart';
import 'package:rentnest/commons/widgets/appbar/tabbar.dart';
import 'package:rentnest/commons/widgets/brands/brand_card.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/search_container.dart';
import 'package:rentnest/commons/widgets/layouts/grid_layout.dart';
import 'package:rentnest/commons/widgets/products/cart/cart_menu_icon.dart';
import 'package:rentnest/commons/widgets/texts/section_headings.dart';
import 'package:rentnest/features/shop/screens/store/widget/category_tab.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: RAppBar(
          title: Text(
            "Store",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            RCartCounterIcon(
              onPressed: () {},
              icon: const Icon(Icons.shopping_basket, color: RColors.white),
            )
          ],
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  pinned: true,
                  floating: true,
                  backgroundColor: RHelperFunctions.isDarkmode(context)
                      ? RColors.black
                      : RColors.white,
                  expandedHeight: RHelperFunctions.screenSizeHeight() * 0.5,
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(RSizes.defaultSpace),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        ///SEARCH BAR
                        const SizedBox(height: RSizes.spaceBtwnItms),
                        const RSearchContainer(
                          text: "Search in Store",
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: RSizes.spaceBtwnItms),

                        /// -- FEATURED BRANDS
                        RSectionHeading(
                          title: "Featured Brands",
                          onPressed: () {},
                        ),
                        const SizedBox(height: RSizes.spaceBtwnItms / 1.5),

                        RGridLayout(
                          itemCount: 4,
                          mainAxisExtent: 80,
                          itemBuilder: (_, index) {
                            return const RBrandCard(
                              showBorder: true,
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  bottom: const RTapBar(
                    tabs: [
                      Tab(child: Text("Apartments")),
                      Tab(child: Text("House")),
                      Tab(child: Text("Dorm")),
                      Tab(child: Text("Condo")),
                      Tab(child: Text("Studio Room")),
                    ],
                  ),
                )
              ];
            },
            body: const TabBarView(
              children: [
                RCategoryTab(),
                RCategoryTab(),
                RCategoryTab(),
                RCategoryTab(),
                RCategoryTab()
              ],
            )),
      ),
    );
  }
}

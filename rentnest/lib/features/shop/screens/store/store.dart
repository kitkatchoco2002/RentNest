import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/appbar/appbar.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/rounded_container.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/search_container.dart';
import 'package:rentnest/commons/widgets/images/circular_image.dart';
import 'package:rentnest/commons/widgets/layouts/grid_layout.dart';
import 'package:rentnest/commons/widgets/products/cart/cart_menu_icon.dart';
import 'package:rentnest/commons/widgets/texts/brand_title_with_verification.dart';
import 'package:rentnest/commons/widgets/texts/section_headings.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/enums.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                expandedHeight:
                    RHelperFunctions.screenSizeHeight() - RSizes.appBarHeight,
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
                      
                      RGridLayout(itemCount: 4, mainAxisExtent: 80, itemBuilder: (_, index) {
                        return GestureDetector(
                        onTap: () {},
                        child: RRoundedContainer(
                          padding: const EdgeInsets.all(RSizes.sm),
                          showBorder: true,
                          backgroundColor: Colors.transparent,
                          child: Row(
                            children: [
                              //-- Icon
                              Flexible(
                                child: RCircularImage(
                                  image: RImages.apartment,
                                  backgroundColor: Colors.transparent,
                                  overlayColor: RHelperFunctions.isDarkmode(context)
                                      ? RColors.white
                                      : RColors.black,
                                ),
                              ),
                              const SizedBox(width: RSizes.spaceBtwnItms/2),
                        
                              // -TEXT
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const RBrandTitleWithVerifiedIcon(title: "XYZ Rentals", brandTextSize: TextSizes.large),
                                    Text(
                                      "26 units blah blah",
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.labelMedium,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    
                      },)
                      
                    ],
                  ),
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}

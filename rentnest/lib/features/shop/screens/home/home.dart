import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/circular_container.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/primary_header_container.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/search_container.dart';
import 'package:rentnest/commons/widgets/images/rounded_image.dart';
import 'package:rentnest/commons/widgets/texts/section_headings.dart';
import 'package:rentnest/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:rentnest/features/shop/screens/home/widgets/home_categories.dart';
import 'package:rentnest/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import "package:rentnest/utils/constants/sizes.dart";
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            RPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// appbar
                  RHomeAppBar(),
                  SizedBox(height: RSizes.spaceBtwnSections),

                  ///searchbar
                  RSearchContainer(
                    text: 'Search in Store',
                    icon: Icons.search_rounded,
                  ),
                  SizedBox(height: RSizes.spaceBtwnSections),

                  ///catergories
                  Padding(
                    padding: EdgeInsets.only(left: RSizes.defaultSpace),
                    child: Column(
                      children: [
                        ///headings
                        RSectionHeading(title: 'Popular Category'),
                        SizedBox(height: RSizes.spaceBtwnItms),

                        ///categories
                        RHomeCategories()
                      ],
                    ),
                  )
                ],
              ),
            ),

            ///BODY
            Padding(
              padding: EdgeInsets.all(RSizes.defaultSpace),
              child: RPromoSlider(banners: [RImages.banner1,RImages.banner2,RImages.banner3],),
              
            ),
          ],
        ),
      ),
    );
  }
}


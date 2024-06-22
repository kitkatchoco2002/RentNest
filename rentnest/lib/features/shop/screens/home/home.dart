import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/primary_header_container.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/search_container.dart';
import 'package:rentnest/commons/widgets/texts/section_headings.dart';
import 'package:rentnest/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:rentnest/features/shop/screens/home/widgets/home_categories.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import "package:rentnest/utils/constants/sizes.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///Header
            const RPrimaryHeaderContainer(
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
              padding: const EdgeInsets.all(RSizes.defaultSpace),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(RSizes.md)),
                child: ClipRRect(borderRadius: BorderRadius.circular(RSizes.md),child: const Image(image: AssetImage(RImages.banner3))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

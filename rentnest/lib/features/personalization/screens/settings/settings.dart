import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rentnest/commons/widgets/appbar/appbar.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/primary_header_container.dart';
import 'package:rentnest/commons/widgets/images/circular_image.dart';
import 'package:rentnest/commons/widgets/layouts/list_view_of_list_tile.dart';
import 'package:rentnest/commons/widgets/list_tiles/setting_menu_listtiles.dart';
import 'package:rentnest/commons/widgets/list_tiles/user_profile_title.dart';
import 'package:rentnest/commons/widgets/texts/section_headings.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //--HEADER
            RPrimaryHeaderContainer(
                child: Column(
              children: [
                //--APPBAR
                RAppBar(
                  title: Text("Account",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: RColors.white)),
                ),
                const SizedBox(height: RSizes.spaceBtwnItms),

                //--USER PROFILE CARD
                const RUserProfileTitle(),
                const SizedBox(height: RSizes.spaceBtwnItms),
              ],
            )),

            //--BODY
            Padding(
              padding: const EdgeInsets.all(RSizes.defaultSpace),
              child: Column(
                children: [
                  //--ACC SETTINGS
                  const RSectionHeading( title: "Account Settings", textColor: RColors.black, showActionButton: false),
                  const SizedBox(height: RSizes.spaceBtwnItms),
                  RSettingsMenuListOfTile(
                    titles: const [
                      "Address",
                      "Home",
                      "Phone",
                      "shdshg",
                      "Address",
                      "Home",
                      "Phone",
                      "shdshg"
                    ],
                    subTitles: const [
                      "Set your Address",
                      "Set your Home",
                      "Set your Phone",
                      "jsbdfhv",
                      "Set your Address",
                      "Set your Home",
                      "Set your Phone",
                      "jsbdfhv"
                    ],
                    icons: const [
                      Icons.add_home_work_rounded,
                      Icons.house,
                      Icons.phone,
                      Icons.abc,
                      Icons.add_home_work_rounded,
                      Icons.house,
                      Icons.phone,
                      Icons.abc,
                    ],
                    trailings: [
                      null,
                      null,
                      null,
                      null,
                      Switch(value: false, onChanged: (value) {}),
                      null,
                      null,
                      null
                    ],
                  ),

                  //-- App settings
                  const SizedBox(height: RSizes.spaceBtwnItms),
                  const RSectionHeading( title: "App Settings", textColor: RColors.black, showActionButton: false),
                  const SizedBox(height: RSizes.spaceBtwnItms),
                   RSettingsMenuListOfTile(
                    titles: const [
                      "Address",
                      "Home",
                      "Phone",
                    ],
                    subTitles: const [
                      "Set your Address",
                      "Set your Home",
                      "Set your Phone",
                    ],
                    icons: const [
                      Icons.add_home_work_rounded,
                      Icons.house,
                      Icons.phone,
                    ],
                    trailings: [
                      null,
                      null,
                      Switch(value: false, onChanged: (value) {}),
                    ],
                  ),

                  //--Logout Button
                  const SizedBox(height: RSizes.spaceBtwnSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text("Logout")),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

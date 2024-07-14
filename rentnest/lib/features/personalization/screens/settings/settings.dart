import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rentnest/commons/widgets/appbar/appbar.dart';
import 'package:rentnest/commons/widgets/custom_shape/container/primary_header_container.dart';
import 'package:rentnest/commons/widgets/images/circular_image.dart';
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
              padding: EdgeInsets.all(RSizes.defaultSpace),
              child: Column(
                children: [
                  //--ACC SETTINGS
                  RSectionHeading(
                    title: "Account Settings",
                    textColor: RColors.black,
                    showActionButton: false,
                  ),
                  SizedBox(height: RSizes.spaceBtwnItms),
                RSettingsMenuListOfTile(
                      titles: ["Address", "Home", "Phone", "shdshg","Address", "Home", "Phone", "shdshg"],
                      subTitles: [
                        "Set your Address",
                        "Set your Home",
                        "Set your Phone",
                        "jsbdfhv",
                        "Set your Address",
                        "Set your Home",
                        "Set your Phone",
                        "jsbdfhv"
                      ],
                      icons: [
                        Icons.add_home_work_rounded,
                        Icons.house,
                        Icons.phone,
                        Icons.abc,
                        Icons.add_home_work_rounded,
                        Icons.house,
                        Icons.phone,
                        Icons.abc,
                      ],
                      trailings: [null, null, null, null,null, null, null, null],
                  
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

class RSettingsMenuListOfTile extends StatelessWidget {
  const RSettingsMenuListOfTile({
    super.key,
    this.ontap,
    required this.titles,
    required this.subTitles,
    required this.icons,
    required this.trailings,
  });
  final List<String> titles, subTitles;
  final List<IconData> icons;
  final List<Widget?> trailings;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: titles.length,
      itemBuilder: (_, index) => RSettingMenuListTile(
        icons: icons,
        titles: titles,
        subTitles: subTitles,
        trailings: trailings,
        ontap: ontap,
        index: index,
      ),
    );
  }
}

class RSettingMenuListTile extends StatelessWidget {
  const RSettingMenuListTile({
    super.key,
    required this.icons,
    required this.titles,
    required this.subTitles,
    required this.trailings,
    required this.ontap,
    required this.index,
  });

  final int index;
  final List<IconData> icons;
  final List<String> titles;
  final List<String> subTitles;
  final List<Widget?> trailings;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icons[index],
        color: RColors.primary,
        size: 28,
      ),
      title: Text(
        titles[index],
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(subTitles[index],
          style: Theme.of(context).textTheme.labelMedium),
      trailing: trailings[index],
      onTap: ontap,
    );
  }
}

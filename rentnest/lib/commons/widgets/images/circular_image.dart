import 'package:flutter/material.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/image_strings.dart';
import 'package:rentnest/utils/constants/sizes.dart';
import 'package:rentnest/utils/helpers/helper_function.dart';

class RCircularImage extends StatelessWidget {
  const RCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overlayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = RSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        // if backgroundcolor is null the swith to the light or dark color
        color: backgroundColor?? (RHelperFunctions.isDarkmode(context)
            ? RColors.black
            : RColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Image(
        image: isNetworkImage? NetworkImage(image) : AssetImage(image) as ImageProvider,
        color: overlayColor
      ),
    );
  }
}

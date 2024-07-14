import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/image_text_widget/vertical_image_text.dart';

class RHomeCategories extends StatelessWidget {
  const RHomeCategories({
    super.key,
    required this.images,
    required this.titles,
  });

  final List<String> images, titles;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return RVerticalImageText(
            image: images[index],
            title: titles[index],
            ontap: () {},
          );
        },
      ),
    );
  }
}

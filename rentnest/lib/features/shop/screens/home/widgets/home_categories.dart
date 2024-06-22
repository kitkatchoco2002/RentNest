import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/image_text_widget/vertical_image_text.dart';
import 'package:rentnest/utils/constants/image_strings.dart';

class RHomeCategories extends StatelessWidget {
  const RHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return RVerticalImageText(image: RImages.house ,title: 'house',ontap: (){},);
        },
      ),
    );
  }
}

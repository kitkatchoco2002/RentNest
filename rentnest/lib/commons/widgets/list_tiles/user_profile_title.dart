import 'package:flutter/material.dart';
import 'package:rentnest/commons/widgets/images/circular_image.dart';
import 'package:rentnest/utils/constants/colors.dart';
import 'package:rentnest/utils/constants/image_strings.dart';

class RUserProfileTitle extends StatelessWidget {
  const RUserProfileTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const RCircularImage( image: RImages.logo, width: 50, height: 50),
      title: Text("USER", style: Theme.of(context).textTheme.headlineSmall!.apply(color: RColors.white)),
      subtitle: Text("user@email.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: RColors.white)),
      trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit, color: RColors.white,)),
    );
  }
}

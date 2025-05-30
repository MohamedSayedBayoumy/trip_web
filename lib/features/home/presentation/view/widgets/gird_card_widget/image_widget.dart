import 'package:flutter/material.dart';

import '../../../../../../common/constants/assets.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(
        image,
        errorBuilder: (context, error, stackTrace) {
          return Image.asset(AppAssets.imagesErrorImage);
        },
      ),
    );
  }
}

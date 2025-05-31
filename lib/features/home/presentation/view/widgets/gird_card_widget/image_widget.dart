import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/constants/assets.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 1, end: 1, bottom: 1),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(15.0),
          top: Radius.circular(10.0),
        ),
        child: CachedNetworkImage(
          imageUrl: image,
          imageBuilder:
              (context, imageProvider) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          placeholder:
              (context, url) => CircularProgressIndicator(color: Colors.white),
          errorWidget:
              (context, url, error) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppAssets.imagesErrorImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
        ),
      ),
    );
  }
}

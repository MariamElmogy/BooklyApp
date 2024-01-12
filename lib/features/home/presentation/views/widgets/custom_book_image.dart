import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.image, required this.width});
  final String image;
  final double width;
  // final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
            width: width,
            child: AspectRatio(
              aspectRatio: 150 / 224,
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                errorWidget: (context, _, __) {
                  return const Icon(
                    Icons.error,
                    color: Colors.white,
                  );
                },
                imageUrl: image,
              ),
            )),
      ),
    );
  }
}

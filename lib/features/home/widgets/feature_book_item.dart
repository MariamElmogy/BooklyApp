import 'package:bookly_app/models/book_model.dart';
import 'package:bookly_app/utils/app_colors.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: AspectRatio(
              aspectRatio: 140 / 224,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      errorWidget: (context, _, __) {
                        return const Icon(
                          Icons.error,
                          color: Colors.white,
                        );
                      },
                      imageUrl: book.image ?? '',
                    ),
                  ),
                  const Positioned(
                    // top: 0,
                    bottom: 10,
                    // left: 10,
                    right: 10,
                    child: Opacity(
                      opacity: 0.7,
                      child: Icon(
                        Icons.play_circle_sharp,
                        color: AppColors.kDefultColor,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
        // ),
        );
  }
}

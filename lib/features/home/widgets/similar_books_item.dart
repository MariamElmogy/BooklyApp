import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../models/book_model.dart';

class SimilarBooksItem extends StatelessWidget {
  const SimilarBooksItem({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: SizedBox(
          // height: MediaQuery.of(context).size.height * .2,
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
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
        ),
      ),
    );
  }
}

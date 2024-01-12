import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../models/book_model.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
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
            imageUrl: book.image ?? '',
          ),
        ),
      ),
    );
  }
}

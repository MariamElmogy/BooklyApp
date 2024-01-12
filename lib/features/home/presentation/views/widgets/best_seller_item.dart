import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_fonts.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../models/book_model.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // for the image
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: SizedBox(
              width: 85,
              height: 130,
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                errorWidget: (context, _, __) {
                  return const Icon(
                    Icons.error,
                    color: AppColors.kDefultColor,
                  );
                },
                imageUrl: book.image ?? '',
              ),
            ),
          ),
          const SizedBox(width: 30),
          // for the text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.kDefultColor,
                    fontSize: 20,
                    fontFamily: AppFonts.titleFont,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  book.author ?? '',
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.kAuthorColor,
                    fontFamily: AppFonts.authorFont,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: AppColors.kDefultColor,
                        ),
                        children: [
                          TextSpan(
                            text: book.price?.toString() ??
                                book.availability ??
                                '',
                            style: const TextStyle(
                              fontSize: 20,
                              fontFamily: AppFonts.priceFont,
                            ),
                          ),
                          TextSpan(
                            text: ' ${book.currency ?? ''} ',
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: AppFonts.currencyFont,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.star,
                      color: AppColors.kStarColor,
                    ),
                    Text(
                      book.rating?.toString() ?? '0',
                      style: const TextStyle(
                          fontSize: 16,
                          color: AppColors.kDefultColor,
                          fontFamily: AppFonts.avgRateFont),
                    ),
                    Text(
                      " (${book.ratingCount?.toString() ?? '0'})",
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.kCountRateColor,
                        fontFamily: AppFonts.rateCountFont,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

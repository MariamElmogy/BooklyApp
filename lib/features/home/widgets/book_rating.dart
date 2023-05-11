import 'package:bookly_app/utils/app_colors.dart';
import 'package:bookly_app/utils/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../../models/book_model.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star,
          color: AppColors.kStarColor,
        ),
        Text(
          book.rating?.toString() ?? '0',
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.kDefultColor,
            fontFamily: AppFonts.avgRateFont
          ),
        ),
        Text(
          " (${book.ratingCount?.toString() ?? '0'})",
          style: const TextStyle(
            fontSize: 14,
            color: AppColors.kCountRateColor,
            fontFamily: AppFonts.rateCountFont
          ),
        ),
      ],
    );
  }
}

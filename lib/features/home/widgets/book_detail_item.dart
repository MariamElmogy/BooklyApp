import 'package:bookly_app/models/book_model.dart';
import 'package:bookly_app/utils/app_colors.dart';
import 'package:bookly_app/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class BookDetailItem extends StatelessWidget {
  const BookDetailItem({super.key, required this.book});

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.horizontal(left: Radius.circular(16)),
              child: Container(
                height: 48,
                width: 150,
                color: Colors.white,
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: AppColors.kPriceColor,
                      ),
                      children: [
                        TextSpan(
                          text:
                              book.price?.toString() ?? book.availability ?? '',
                          style: const TextStyle(
                            fontSize: 18,
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
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.horizontal(right: Radius.circular(16)),
              child: Container(
                height: 48,
                width: 150,
                color: AppColors.kPreviewColor,
                child: const Center(
                  child: Text(
                    'Free',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: AppFonts.previewFont),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

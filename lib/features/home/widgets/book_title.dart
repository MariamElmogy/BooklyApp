import 'package:bookly_app/models/book_model.dart';
import 'package:bookly_app/utils/app_colors.dart';
import 'package:bookly_app/utils/app_fonts.dart';
import 'package:flutter/material.dart';

class BookTitle extends StatelessWidget {
  const BookTitle({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Text(
      book.title,
      maxLines: 2,
      style: const TextStyle(
        color: AppColors.kDefultColor,
        fontSize: 30,
        fontFamily: AppFonts.titleFont,
      ),
      overflow: TextOverflow.ellipsis,
    );
  }
}

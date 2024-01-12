import 'package:bookly_app/core/utils/app_colors.dart';
import 'package:bookly_app/core/utils/app_fonts.dart';
import 'package:bookly_app/models/book_model.dart';
import 'package:flutter/material.dart';

class BookAuthor extends StatelessWidget {
  const BookAuthor({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Text(
      book.author ?? " ",
      style: const TextStyle(
        color: AppColors.kAuthorColor,
        fontSize: 18,
        fontFamily: AppFonts.authorFont,
      ),
    );
  }
}

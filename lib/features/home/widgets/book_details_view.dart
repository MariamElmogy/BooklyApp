import 'package:bookly_app/features/home/widgets/similar_books_list_view_future_builder.dart';
import 'package:bookly_app/models/book_model.dart';
import 'package:bookly_app/utils/app_colors.dart';
import 'package:bookly_app/utils/app_fonts.dart';
import 'package:flutter/material.dart';

import 'book_author.dart';
import 'book_detail_item.dart';
import 'book_image.dart';
import 'book_rating.dart';
import 'book_title.dart';
import 'custom_app_bar_clickedbook.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});

  static const String id = 'bookDetailsView';
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const CustomAppBarClickedBook(),
              Center(
                child: BookImage(book: book),
              ),
              const SizedBox(
                height: 45,
              ),
              BookTitle(book: book),
              const SizedBox(
                height: 5,
              ),
              BookAuthor(book: book),
              const SizedBox(
                height: 8,
              ),
              BookRating(book: book),
              const SizedBox(
                height: 20,
              ),
              BookDetailItem(book: book),
              const SizedBox(
                height: 25,
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                  child: Text(
                    "You can also like",
                    style: TextStyle(
                        color: AppColors.kDefultColor,
                        fontSize: 14,
                        fontFamily: AppFonts.headlinesFont),
                  ),
                ),
              ),
              SimilarBooksListViewFutureBuilder(
                book: book,
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

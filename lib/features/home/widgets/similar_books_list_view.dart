import 'package:bookly_app/features/home/widgets/similar_books_item.dart';
import 'package:flutter/material.dart';

import '../../../models/book_model.dart';
import 'book_details_view.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key, required this.books});
  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              var currentBook = books[index];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BookDetailsView(
                      book: currentBook,
                    );
                  },
                ),
              );
            },
            child: SimilarBooksItem(
              book: books[index],
            ),
          );
        },
      ),
    );
  }
}

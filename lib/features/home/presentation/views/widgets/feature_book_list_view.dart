import 'package:bookly_app/features/home/presentation/views/widgets/book_details_view.dart';
import 'package:flutter/material.dart';

import '../../../../../models/book_model.dart';
import 'feature_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});
  final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .26,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true, // btkhle l listview kolohm y build mara wa7da
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
              child: FeaturedBookItem(
                book: books[index],
              ),
            );
          }),
    );
  }
}

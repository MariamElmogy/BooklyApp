import 'package:flutter/material.dart';

import '../../../../../models/book_model.dart';
import 'best_seller_item.dart';
import 'book_details_view.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key, required this.books});

  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
          child: BestSellerItem(
            book: books[index],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import '../../../utils/book_api_service.dart';
import 'feature_book_list_view.dart';

class FeaturedBooksListViewFutureBuilder extends StatelessWidget {
  const FeaturedBooksListViewFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BooksApiService.fetchFeaturedBooks(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          // snapshot is used for showing the error
          if (snapshot.connectionState == ConnectionState.done) {
            return FeaturedBooksListView(
              books: snapshot.data!,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        } else {
          return Text(
            snapshot.error.toString(),
            style: const TextStyle(
              color: Colors.white,
            ),
          );
        }
      },
    );
  }
}

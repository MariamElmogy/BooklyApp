import 'package:flutter/material.dart';

import '../../../utils/book_api_service.dart';
import 'best_seller_list_view.dart';

class BestSellerViewFutureBuilder extends StatelessWidget {
  const BestSellerViewFutureBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: BooksApiService.fetchNewsBooks(),
      builder: (context, snapshot) {
        if (!snapshot.hasError) {
          if (snapshot.connectionState == ConnectionState.done) {
            return BestSellerListView(
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

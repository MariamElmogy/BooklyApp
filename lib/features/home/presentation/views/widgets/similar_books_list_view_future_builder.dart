import 'package:bookly_app/core/utils/book_api_service.dart';
import 'package:bookly_app/features/home/cubits/home_cubit/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListViewFutureBuilder extends StatelessWidget {
  const SimilarBooksListViewFutureBuilder({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SimilarBooksCubit(BooksApiService(), book),
      child: FutureBuilder(
        future: BooksApiService.fetchSimilarBooks(book.category![0]),
        builder: (context, snapshot) {
          if (!snapshot.hasError) {
            if (snapshot.connectionState == ConnectionState.done) {
              return SimilarBooksListView(
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
      ),
    );
  }
}

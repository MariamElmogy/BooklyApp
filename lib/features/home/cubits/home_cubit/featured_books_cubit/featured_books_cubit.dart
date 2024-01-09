import 'package:bloc/bloc.dart';
import 'package:bookly_app/utils/book_api_service.dart';
import 'package:meta/meta.dart';

import '../../../../../models/book_model.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchBookService) : super(FeaturedBooksInitial());

  BooksApiService fetchBookService;

  List<BookModel>? bookModel;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    try {
      bookModel = await BooksApiService.fetchFeaturedBooks();
      emit(FeaturedBooksSuccess(bookModel!));
    } on Exception catch (e) {
      emit(FeaturedBooksFailure(e.toString()));
    }
  }
}

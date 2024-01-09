part of 'similar_books_cubit.dart';

@immutable
abstract class SimilarBooksState {}

class SimilarBooksInitial extends SimilarBooksState {}

class SimilarBooksLoading extends SimilarBooksState {}

class SimilarBooksSuccess extends SimilarBooksState {
  List<BookModel> bookModel;
  SimilarBooksSuccess(this.bookModel);
}

class SimilarBooksFailure extends SimilarBooksState {
  SimilarBooksFailure(this.errMessage);

  final String errMessage;
}

import 'package:flutter/material.dart';

class BookModel {
  final String? image;
  final String title;
  final String? author;
  final num? rating; // bst2bl rakm swa2 kan double or int badl dynamic
  final int? ratingCount;
  final num? price;
  final String? availability;
  final String? currency;
  final List<dynamic>? category;

  BookModel(
      {@required this.image,
      required this.title,
      @required this.author,
      @required this.rating,
      @required this.ratingCount,
      @required this.availability,
      @required this.price,
      @required this.currency,
      @required this.category});

  factory BookModel.fromJson(dynamic jsonData) {
    return BookModel(
      image: jsonData['volumeInfo']['imageLinks']?['smallThumbnail'],
      title: jsonData['volumeInfo']['title'],
      author: jsonData['volumeInfo']['authors']?[0] ?? "Unknown",
      rating: jsonData['volumeInfo']['averageRating'],
      ratingCount: jsonData['volumeInfo']['ratingsCount'],
      availability: jsonData['saleInfo']['saleability'],
      price: jsonData['saleInfo']['listPrice']?['amount'],
      currency: jsonData['saleInfo']['listPrice']?['currencyCode'],
      category: List<String>.from(
          jsonData['volumeInfo']['categories'] ?? ['Unknown']),
    );
  }
}

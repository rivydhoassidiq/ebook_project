import 'package:flutter/material.dart';

class BookList {
  String imageUrl;
  String writers;
  String title;

  BookList({
    required this.imageUrl,
    required this.writers,
    required this.title,
  });
}

List<BookList> bookLists = [
  BookList(
    imageUrl: 'assets/images/tredingbook1.png',
    writers: 'Guy Kawasaki',
    title: 'Enchantment',
  ),
  BookList(
    imageUrl: 'assets/images/trendingbook2.png',
    writers: 'Aaron Mahnke',
    title: 'Lore',
  ),
  BookList(
    imageUrl: 'assets/images/trendingbook3.png',
    writers: 'Spencer Johnson',
    title: 'Who Moved My Cheese',
  ),
];

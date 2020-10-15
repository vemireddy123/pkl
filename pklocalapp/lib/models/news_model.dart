import 'package:flutter/widgets.dart';

class NewsModel {
  String title;
  String urlToImage;
  String publishedAt;
  String url;

  NewsModel({
    @required this.title,
    @required this.urlToImage,
    @required this.publishedAt,
    @required this.url,
  });
}

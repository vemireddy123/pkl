import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pklocalapp/models/news_model.dart';

class News {
  NewsModel newsModel;
  List<NewsModel> news = [];
  Future<void> getNews() async {
    String api =
        "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=151fa032ee4c4a3197bf826d40888633";
    var response = await http.get(api);
    var responseData = jsonDecode(response.body);
    if (responseData['status'] == 'ok') {
      responseData['articles'].forEach((value) {
        if (value['urlToImage'] != null ) {
          newsModel = NewsModel(
            title: value['title'],
            urlToImage: value['urlToImage'],
            publishedAt: value['publishedAt'],
            url: value['url'],
          );
          news.add(newsModel);
        }
      });
    }
  }
}

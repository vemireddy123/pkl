import 'package:flutter/material.dart';
import 'package:pklocalapp/classes/articles_news.dart';
import 'package:pklocalapp/models/news_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  Widget _buildSingleLatestNews({String image, String title, String date}) {
     
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            height: 220,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/logo.jpeg'),
                  fit: BoxFit.cover),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(20),
            ),
            width: 350,
          ),
        ),
        Text(
          'This is new logo',
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  List<NewsModel> myList;
  @override
  void initState() {
    News news = News();
    news.getNews();
    myList = news.news;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(myList.length);
    return Scaffold(
      appBar: AppBar(
        title: Text('For You'),
        elevation: 0.0,
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              width: double.infinity,
              //  color: Colors.redAccent,

              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Top News',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'latest news',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 300,
              width: double.infinity,
              margin: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: myList.length,
                      itemBuilder: (context, index) => _buildSingleLatestNews(
                        date: myList[index].publishedAt,
                        image: myList[index].urlToImage,
                        title: myList[index].title,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

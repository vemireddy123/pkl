import 'package:flutter/material.dart';

class NewsGridScreen extends StatefulWidget {
  @override
  _NewsGridScreenState createState() => _NewsGridScreenState();
}

class _NewsGridScreenState extends State<NewsGridScreen> {
  final list_Items = [
    {'name': 'text1', 'pic': 'assets/images/n1.jpeg', 'title': 'text1'},
    {'name': 'text2', 'pic': 'assets/images/n2.jpeg', 'title': 'text3'},
    {'name': 'text3', 'pic': 'assets/images/n3.jpeg', 'title': 'text3'},
    {'name': 'text4', 'pic': 'assets/images/n4.jpeg', 'title': 'text3'},
    {'name': 'text5', 'pic': 'assets/images/n1.jpeg', 'title': 'text3'},
    {'name': 'text5', 'pic': 'assets/images/n2.jpeg', 'title': 'text3'},
    {'name': 'text5', 'pic': 'assets/images/n3.jpeg', 'title': 'text3'},
    {'name': 'text5', 'pic': 'assets/images/n4.jpeg', 'title': 'text3'},
    {'name': 'text5', 'pic': 'assets/images/n1.jpeg', 'title': 'text3'},
    {'name': 'text5', 'pic': 'assets/images/n2.jpeg', 'title': 'text3'},
    {'name': 'text5', 'pic': 'assets/images/n3.jpeg', 'title': 'text3'},
    {'name': 'text5', 'pic': 'assets/images/n4.jpeg', 'title': 'text3'},
    {'name': 'text5', 'pic': 'assets/images/n2.jpeg', 'title': 'text3'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Following'),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
        itemCount: list_Items.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, int index) {
          return GridItems(
            grid_Name: list_Items[index]['name'],
            grid_image: list_Items[index]['pic'],
            grid_title: list_Items[index]['title'],
          );
        },
      ),
    );
  }
}

class GridItems extends StatelessWidget {
  final grid_Name;
  final grid_image;
  final grid_title;

  const GridItems({this.grid_Name, this.grid_image, this.grid_title});
  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Hero(
          tag: grid_Name,
          child: Material(
            child: InkWell(
              onTap: () {},
              child: GridTile(
                header: Container(
                  child: ListTile(
                    leading: Text(
                      grid_Name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ),
                child: Image.asset(
                  grid_image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}

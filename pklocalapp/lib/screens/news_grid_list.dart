import 'package:flutter/material.dart';
class NewsGridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    singleCard(){
      return Card(

      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Following'),
        backgroundColor: Colors.red,
      ),
      body: GridView.count( 
        crossAxisCount: 2,
        children: [
          singleCard(),
        ],
      ),
      
    );
  }
}
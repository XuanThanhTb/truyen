import 'package:flutter/material.dart';

class ReadComic extends StatefulWidget {
  const ReadComic({Key key}) : super(key: key);

  @override
  State<ReadComic> createState() => _ReadComicState();
}

class _ReadComicState extends State<ReadComic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back, color: Colors.black)),
          
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Mangas247",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search, color: Colors.black),
            ),
          ],
        ),
        body: Container(),
      ),
    );
  }
}

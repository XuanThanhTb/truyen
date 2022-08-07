import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mangas/models/home.dart';
import 'package:intl/intl.dart';
import 'package:mangas/ui/detail_read_comic.dart';

class ReadComic extends StatefulWidget {
  List<Chapter> listChapter;
  ReadComic({Key key, this.listChapter}) : super(key: key);

  @override
  State<ReadComic> createState() => _ReadComicState();
}

class _ReadComicState extends State<ReadComic> {
  int indexSelect = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                floating: true,
                expandedHeight: 200,
                // title: Text("Mangas247"),
                flexibleSpace: FlexibleSpaceBar(
                  background: CachedNetworkImage(
                    imageUrl:
                        "https://intphcm.com/data/upload/mau-banner-hinh-anh.jpg",
                    fit: BoxFit.fitHeight,
                  ),
                  title: Text(
                    "Reborn Girl Starting A New Life In ...",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SliverList(
                  delegate: SliverChildListDelegate([
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  width: MediaQuery.of(context).size.width - 56,
                  child: Text(
                    "Annoying the bossy president, she wanit him to pay",
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: new TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  width: MediaQuery.of(context).size.width - 56,
                  child: Text(
                    "Ongoing",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: new TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ...widget.listChapter.map((item) {
                  int index = widget.listChapter
                      .indexWhere((element) => item == element);

                  return InkWell(
                    onTap: () {
                      setState(() {
                        indexSelect = index;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailReadComic(
                                  chapter: item,
                                )),
                      );
                    },
                    child: Card(
                      color:
                          indexSelect != index ? Colors.white : Colors.yellow,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              item.name,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              _converTime(item.date ?? DateTime.now()),
                              style: new TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList(),
                SizedBox(
                  height: 150,
                )
              ])),
            ],
          ),
          Positioned(
            bottom: 0,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Tính năng đang phát triển :)",
                      style: TextStyle(fontSize: 18)),
                  backgroundColor: Colors.red,
                ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 32,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: new BorderRadius.circular(16)),
                child: Center(
                    child: Text(
                  "Read now",
                  style: new TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                )),
              ),
            ),
          )
        ],
      ),
    );
  }

  String _converTime(String date) {
    DateTime parseDate = DateFormat("yyyy-MM-dd HH:mm:ss").parse(date);
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat('dd/MM/yyyy');
    return outputFormat.format(inputDate);
  }
}

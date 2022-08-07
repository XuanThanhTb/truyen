import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mangas/base/loadding.dart';
import 'package:mangas/models/home.dart';
import 'package:mangas/provider/provider_home.dart';
import 'package:mangas/ui/read_comic.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Provider.of<ProviderHome>(context, listen: false).getHomeData();
    super.initState();
  }

  Widget _viewBanner() {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      // height: 200,
      child: Column(
        children: [
          SizedBox(
            height: 150,
            width: double.infinity,
            child: Carousel(
              dotSize: 5,
              dotSpacing: 15,
              dotColor: Colors.black12,
              indicatorBgPadding: 5,
              dotBgColor: Colors.transparent,
              dotVerticalPadding: 5,
              dotPosition: DotPosition.bottomCenter,
              images: [
                Stack(
                  children: [
                    CachedNetworkImage(
                      fit: BoxFit.contain,
                      imageUrl:
                          "https://intphcm.com/data/upload/mau-banner-hinh-anh.jpg",
                      placeholder: (context, url) => Padding(
                        padding: const EdgeInsets.all(32),
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Positioned(
                      top: 8,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: new TextStyle(
                                fontSize: 11.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    CachedNetworkImage(
                      fit: BoxFit.contain,
                      imageUrl:
                          "https://intphcm.com/data/upload/mau-banner-hinh-anh.jpg",
                      placeholder: (context, url) => Padding(
                        padding: const EdgeInsets.all(32),
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Positioned(
                      top: 8,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: new TextStyle(
                                fontSize: 11.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    CachedNetworkImage(
                      fit: BoxFit.contain,
                      imageUrl:
                          "https://intphcm.com/data/upload/mau-banner-hinh-anh.jpg",
                      placeholder: (context, url) => Padding(
                        padding: const EdgeInsets.all(32),
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Positioned(
                      top: 8,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: new TextStyle(
                                fontSize: 11.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    CachedNetworkImage(
                      fit: BoxFit.contain,
                      imageUrl:
                          "https://intphcm.com/data/upload/mau-banner-hinh-anh.jpg",
                      placeholder: (context, url) => Padding(
                        padding: const EdgeInsets.all(32),
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Positioned(
                      top: 8,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: new TextStyle(
                                fontSize: 11.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    CachedNetworkImage(
                      fit: BoxFit.contain,
                      imageUrl:
                          "https://intphcm.com/data/upload/mau-banner-hinh-anh.jpg",
                      placeholder: (context, url) => Padding(
                        padding: const EdgeInsets.all(32),
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Positioned(
                      top: 8,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                          ),
                        ),
                        padding: const EdgeInsets.only(left: 4, right: 4),
                        child: Center(
                          child: Text(
                            "4.5",
                            style: new TextStyle(
                                fontSize: 11.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _viewIcon() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Tính năng đang phát triển :)",
                      style: TextStyle(fontSize: 18)),
                  backgroundColor: Colors.red,
                ));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.landscape,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Schedule",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        fontSize: 11.0,
                        color: Colors.black12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Tính năng đang phát triển :)",
                      style: TextStyle(fontSize: 18)),
                  backgroundColor: Colors.red,
                ));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.timer,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Wait For Free",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        fontSize: 11.0,
                        color: Colors.black12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Tính năng đang phát triển :)",
                      style: TextStyle(fontSize: 18)),
                  backgroundColor: Colors.red,
                ));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.free_breakfast_sharp,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Free",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        fontSize: 11.0,
                        color: Colors.black12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Tính năng đang phát triển :)",
                      style: TextStyle(fontSize: 18)),
                  backgroundColor: Colors.red,
                ));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.airplane_ticket_sharp,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Tickets",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        fontSize: 11.0,
                        color: Colors.black12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Tính năng đang phát triển :)",
                      style: TextStyle(fontSize: 18)),
                  backgroundColor: Colors.red,
                ));
              },
              child: Column(
                children: [
                  Icon(
                    Icons.reviews_sharp,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Rewards",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                        fontSize: 11.0,
                        color: Colors.black12,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildGridView(List<Data> listDataHome) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - 16) / 3;
    final double itemWidth = size.width / 3;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _viewBanner(),
        _viewIcon(),
        Padding(
          padding: const EdgeInsets.only(top: 0, bottom: 8, left: 8),
          child: Text(
            "Trands-Hottest Comic",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: new TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Container(
            child: new GridView.count(
              crossAxisCount: 3,
              childAspectRatio: (itemWidth / itemHeight),
              controller: new ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: listDataHome.map((value) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReadComic(
                                listChapter: value.chapter,
                              )),
                    );
                  },
                  child: new Container(
                    margin: const EdgeInsets.all(1.0),
                    padding: const EdgeInsets.only(left: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: CachedNetworkImage(
                                fit: BoxFit.contain,
                                imageUrl: "${value.thumbnail}",
                                placeholder: (context, url) => Padding(
                                  padding: const EdgeInsets.all(32),
                                  child: Center(
                                      child: CircularProgressIndicator()),
                                ),
                                errorWidget: (context, url, error) =>
                                    Icon(Icons.error),
                              ),
                            ),
                            Positioned(
                              top: 8,
                              right: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                padding:
                                    const EdgeInsets.only(left: 4, right: 4),
                                child: Center(
                                  child: Text(
                                    "4.5",
                                    style: new TextStyle(
                                        fontSize: 11.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 8, left: 4, right: 4),
                          child: new Text(
                            "${value.postTitle}",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: new TextStyle(
                                fontSize: 11.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, left: 4, right: 4, bottom: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              new Text(
                                value.genre[0],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: new TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black12,
                                    fontWeight: FontWeight.normal),
                              ),
                              Text(
                                " | " + value.genre[0],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: new TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black12,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
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
        body: Consumer<ProviderHome>(builder: (context, provider, child) {
          return Container(
            child: provider.isCheckData == false
                ? loadingFullScreen()
                : buildGridView(provider.listDataHome),
          );
        }),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mangas/base/loadding.dart';
import 'package:mangas/models/home.dart';
import 'package:mangas/resources/reads/reads.dart';

class DetailReadComic extends StatefulWidget {
  Chapter chapter;
  DetailReadComic({Key key, this.chapter}) : super(key: key);

  @override
  State<DetailReadComic> createState() => _DetailReadComicState();
}

class _DetailReadComicState extends State<DetailReadComic> {
  List<dynamic> _listDataImage = [];
  bool _isCheckData = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getRead();
  }

  void _getRead() {
    CallDataRead().getDataReads(id: widget.chapter.id).then((response) {
      _isCheckData = false;
      if (response.data != null && response.statusCode == 200) {
        setState(() {
          _isCheckData = true;
          _listDataImage = response.data;
        });
        // print("ok");
      }
    }).catchError((onError) {
      print("Loi call");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chapter.name),
      ),
      body: Container(
        child: _isCheckData == true
            ? ListView.builder(
                itemCount: _listDataImage.length,
                itemBuilder: (context, index) {
                  return _listDataImage.isNotEmpty
                      ? CachedNetworkImage(
                          fit: BoxFit.contain,
                          imageUrl: "${_listDataImage[index]}",
                          // cacheKey: index.toString(),
                          placeholder: (context, url) => Padding(
                            padding: const EdgeInsets.all(32),
                            child: Center(child: CircularProgressIndicator()),
                          ),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        )
                      : Center(
                          child: Text("Không có dữ liệu!"),
                        );
                })
            : loadingFullScreen(),
      ),
    );
  }
}

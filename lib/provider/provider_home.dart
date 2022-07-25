import 'package:flutter/cupertino.dart';
import 'package:mangas/models/home.dart';
import 'package:mangas/resources/home/home.dart';

class ProviderHome extends ChangeNotifier {

  List<Data> _listDataHome = [];
  bool _isCheckData = false;


  
  List<Data> get listDataHome => _listDataHome;

  setListDataHome(List<Data> value) {
    _listDataHome = value;
    notifyListeners();
  }


  bool get isCheckData => _isCheckData;

  setIsCheckData(bool value) {
    _isCheckData = value;
    notifyListeners();
  }

  //call api data home
  void getHomeData() {
    CallDataHome().getListHomeData().then((response) {
      if (response.data != null && response.statusCode == 200) {
        setIsCheckData(true);
        setListDataHome(response.data.item.data);
        print("ok nha");
      }
    }).catchError((onError) {
      print('error home data' + onError.toString());
    });
  }
}

import 'package:flutter/material.dart';
import 'package:mangas/provider/provider_home.dart';
import 'package:mangas/ui/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProviderHome(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mangas247',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage(),
        // MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,  this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),

    );
  }
}


class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 12,
        selectedFontSize: 12,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        // selectedLabelStyle:
        //     TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.apps),
            // ignore: deprecated_member_use
            // title: Text(
            //   "Home",
            //   // style:
            //   //     TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            // ),
          ),
          BottomNavigationBarItem(
            label: "Bar",
            // ignore: deprecated_member_use
            // title: Text(
            //   "Bar",
            //   // style:
            //   //     TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            // ),
            icon: Icon(Icons.bar_chart_sharp),
          ),
          BottomNavigationBarItem(
            label: "Search",
            // ignore: deprecated_member_use
            // title: Text(
            //   "Search",
            //   // style:
            //   //     TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            // ),
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "My",
            // ignore: deprecated_member_use
            // title: Text(
            //   "My",
            //   // style:
            //   //     TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            // ),
            icon: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}

class BarItemPage extends StatefulWidget {
  const BarItemPage({Key key}) : super(key: key);

  @override
  State<BarItemPage> createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("BarItemPage");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Bar Item Page"),
      ),
    );
  }
}

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("SearchPage");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Search Page"),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("MyPage");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("My Page"),
      ),
    );
  }
}

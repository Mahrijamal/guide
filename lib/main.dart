import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'school/schoolmain.dart';
import 'ads/adsmain.dart';
import 'profile/profilemain.dart';
import 'profession/profmain.dart';
import 'event/eventmain.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      title: "GUIDE",
      initialRoute: "/MainPage",

      routes: {
        '/': (context) => MainPage(),
        '/MainPage': (context) => MainPage(),
      },

      onUnknownRoute: (RouteSettings settings) =>
          MaterialPageRoute(builder: (context) => MainPage()),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal,
      //home: NavigasyonIslemleri()
    ),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("asset/welcomepage.png", fit: BoxFit.fill),
          GestureDetector(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow),
                borderRadius: BorderRadius.circular(100),
                color: Colors.yellow,
              ),
              margin: EdgeInsets.only(
                left: 0,
                right: 236,
                top: 0,
              ),
              child: Center(
                child: Text(
                  "Start",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.teal.shade800,
                      fontWeight: FontWeight.w900, decoration:
                  TextDecoration.none),
                ),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BottomNavBar()));
            },
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  List sahypa = [];
  var chouse = PageStorageKey("chouse_key");
  var scholls = PageStorageKey("scholls_key");
  var adss = PageStorageKey("adss_key");
  var events = PageStorageKey("events_key");
  var profiles = PageStorageKey("profiles_key");

  void initState() {
    Chouse chouse = Chouse();
    Scholls scholls = Scholls();
    Adss adss = Adss();
    Events events = Events();
    Profiles profiles = Profiles();

    sahypa = [chouse, scholls, adss, events, profiles];
    // TODO: implement initState
    super.initState();
  }

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 65.0,
          items: <Widget>[
            Icon(Icons.call_split, color: Colors.white, size: 25),
            Icon(Icons.auto_stories, color: Colors.white, size: 25),
            Icon(Icons.compare_arrows, color: Colors.white, size: 25),
            Icon(Icons.calendar_today_outlined,
                color: Colors.white, size: 25),
            Icon(Icons.perm_identity, color: Colors.white, size: 25),
          ],
          color: Colors.teal.shade900,
          buttonBackgroundColor: Colors.teal.shade900,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          letIndexChange: (index) => true,
        ),
        body: sahypa[_page]);
  }
}


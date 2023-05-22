import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onbox_shop/ui/home/home.dart';
import 'package:onbox_shop/ui/my/my.dart';
import 'package:onbox_shop/ui/shop/shop.dart';
import 'package:onbox_shop/ui/splash/splash_screen.dart';
import 'package:onbox_shop/ui/warehouse/warehouse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tabIndex = 0;

  final _screenList = [
    HomeScreen(),
    ShopScreen(),
    Container(
      color: Colors.amber,
    ),
    WarehouseScreen(),
    MyScreen()
  ];

  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
  }

  getScreen() => _screenList[tabIndex];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getScreen(),
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        height: 80,
        width: 80,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: FloatingActionButton(
          backgroundColor: Color(0xffFFA502),
          onPressed: () {
            changeTabIndex(2);
          },
          elevation: 0,
          child: Container(
            margin: EdgeInsets.all(2),
            // color: Color(0xffFFA502),
            child: SvgPicture.asset(
              "assets/images/icon3.svg",
              height: 42,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        height: 101,
        color: Colors.white,
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        padding: const EdgeInsets.all(0),
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        changeTabIndex(0);
                      },
                      child: itemBottom(
                          image: "assets/images/home.svg",
                          title: "Home",
                          index: 0)),
                  MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        changeTabIndex(1);
                      },
                      child: itemBottom(
                          image: "assets/images/shop.svg",
                          title: "Shop",
                          index: 1)),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      changeTabIndex(3);
                    },
                    child: itemBottom(
                        image: "assets/images/warehouse.svg",
                        title: "Warehouse",
                        index: 3),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      changeTabIndex(4);
                    },
                    child: itemBottom(
                        image: "assets/images/my.svg", title: "My", index: 4),
                  ),
                ],
              )
            ],
          ),
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget itemBottom(
      {required String image, required String title, required int index}) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const SizedBox(
        height: 5,
      ),
      SvgPicture.asset(
        image,
        height: 28,
        color: tabIndex == index ? Colors.blue : Colors.grey,
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        title,
        style: TextStyle(
            fontSize: 16, color: tabIndex == index ? Colors.blue : Colors.grey),
      )
    ]);
  }
}

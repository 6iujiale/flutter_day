import 'package:flutter/material.dart';
import 'package:ljl_day02_2/pages/home.dart';
import 'package:ljl_day02_2/pages/me.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //默认选中第一个
  int _currentIndex = 0;

  //页面
  final List<Widget> _pages = const [
    HomePage(),
    MePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          //选中变化回调函数
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "我的",
            ),
          ],
        ),
      body: _pages[_currentIndex],
      floatingActionButton: Container(
        width: 80,
        height: 80,
        child:FloatingActionButton(
        onPressed: null,
        child: Image.asset("Images/ic_home_compose.png",scale: 2,),
      ),
      )
      ),
    );
  }
}

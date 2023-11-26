import 'package:flutter/material.dart';
import 'package:flutter_ruixing/home_Page.dart';
import 'package:flutter_ruixing/login.dart';
import 'package:flutter_ruixing/menu_page.dart';
import 'package:flutter_ruixing/orderList_page.dart';
import 'package:flutter_ruixing/shoppingCart_page.dart';
import 'package:flutter_ruixing/woDe_page.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'authController.dart';


void main() async {
  await GetStorage.init;


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   appBarTheme: AppBarTheme(
      //     backgroundColor: Colors.white,//设置导航栏的颜色
      //     elevation: 0,//设置导航栏下方的线
      //     iconTheme: IconThemeData(color: Colors.black),//设置导航栏上部件的颜色
      //   )
      // ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  late AuthController authController = Get.put(AuthController()); // 注入 AuthController

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {


    final List<Widget> _tabs = [
      RXHomePag(),
      MenuPage(),
      OrderListPage(),
      ShoppingCartPage(),
      WodePage()
    ];
    return Scaffold(
        // appBar: null,
        // appBar: AppBar(
          // title: Text('Bottom Tab Bar Example'),
        //   backgroundColor: Colors.white,
        // ),
        body: _tabs[_currentIndex],
        bottomNavigationBar: SizedBox(
          // width: 40,
          height: 88,
          child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
              if (_currentIndex == 2 && authController.isLoggedIn.value == true) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage())
                );
                _currentIndex = 0;
              }
            });
          },
          type: BottomNavigationBarType.fixed, // 固定宽度
          selectedFontSize: 10.0, // 选中状态下的字体大小
          unselectedFontSize: 10.0, // 非选中状态下的字体大小
          items: [
            BottomNavigationBarItem(
              icon:SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/Icons/shouye1.png'),
              ),
              activeIcon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/Icons/shouye2.png'),
              ),
              label: '首页',
            ),
            BottomNavigationBarItem(
              icon:SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/Icons/shouye1.png'),
              ),
              activeIcon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/Icons/shouye2.png'),
              ),
              label: '菜单'
            ),
            BottomNavigationBarItem(
              icon:SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/Icons/shouye1.png'),
              ),
              activeIcon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/Icons/shouye2.png'),
              ),
              label: '订单'
            ),
            BottomNavigationBarItem(
              icon:SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/Icons/shouye1.png'),
              ),
              activeIcon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/Icons/shouye2.png'),
              ),
              label: '购物车'
            ),
            BottomNavigationBarItem(
              icon:SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/Icons/shouye1.png'),
              ),
              activeIcon: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('assets/Icons/shouye2.png'),
              ),
              label: '我的'
            ),
          ],
        ),
        )
         
    );
  }

}
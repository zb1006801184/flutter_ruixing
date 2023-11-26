import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'authController.dart'; 

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  
}

class _LoginPageState extends State<LoginPage> {
  final AuthController authController = Get.put(AuthController()); // 注入 AuthController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      
      body: Column(
        
        children: [
          Container(
            margin: EdgeInsets.only(top: 90),
            child: Center(
              child: Image.asset(
                'assets/loginIcon.png',
                width: 80,
                height: 94,
              ),
            ),
            
          ),

          Container(
            margin: EdgeInsets.only(top: 116.0),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 44),
                  backgroundColor: Color.fromARGB(70, 83, 182, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0)
                    )
                  )
                ),
                onPressed: (){
                  authController.login();
                  if(authController.isLoggedIn.value) {
                    Navigator.pop(context);
                  }
                }, 
                child: 
                  Text('微信一键登录'),
                ),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top: 25),
            child: Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(300, 44),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4.0),
                    ),
                    side: BorderSide(color: Color.fromARGB(242, 1, 202, 213))
                  )
                ),
                onPressed: (){
                  
                  //添加登录接口返回情况进行判断是否登录成功
                  //成功：返回到首页
                  authController.login();
                  if(authController.isLoggedIn.value) {
                    Navigator.pop(context);
                  }
                  //失败：留在当前登录页面
                }, 
                child: 
                  Text(
                    '手机验证码登录',
                    style: TextStyle(
                      color:Color.fromARGB(242, 1, 202, 213)
                    ),
                  ),
                ),
            ),
          )
        ],
      ),
    );
  }
}
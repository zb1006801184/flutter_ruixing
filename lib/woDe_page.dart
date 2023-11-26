import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'wode_list_widget.dart';

class WodePage extends StatefulWidget {
  const WodePage({super.key});

  @override
  State<WodePage> createState() => _WodePageState();
}

class _WodePageState extends State<WodePage> {
  @override
  Widget build(BuildContext context) {
    // 获取屏幕宽度
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(238, 238, 242, 248),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///1. 用户信息widget
            personWidget(),
            OureListWidget(
                leftImageNameStr: 'assets/wode/info.png',
                titleStr: '个人资料',
                rightImageNameStr: 'assets/wode/listArrow.png'),
            OureListWidget(
                leftImageNameStr: 'assets/wode/wallet.png',
                titleStr: '咖啡钱包',
                rightImageNameStr: 'assets/wode/listArrow.png'),
            OureListWidget(
                leftImageNameStr: 'assets/wode/coupon.png',
                titleStr: '优惠券',
                rightImageNameStr: 'assets/wode/listArrow.png'),
            OureListWidget(
                leftImageNameStr: 'assets/wode/redeemoffer.png',
                titleStr: '兑换优惠',
                rightImageNameStr: 'assets/wode/listArrow.png'),
            OureListWidget(
                leftImageNameStr: 'assets/wode/bill.png',
                titleStr: '发票管理',
                rightImageNameStr: 'assets/wode/listArrow.png'),
            SizedBox(height: 10),
            OureListWidget(
                leftImageNameStr: 'assets/wode/help.png',
                titleStr: '帮助反馈',
                rightImageNameStr: 'assets/wode/listArrow.png'),
            // Expanded(
            //     child: Container(
            //   color: Color.fromARGB(238, 238, 242, 248),
            //   child: Center(
            //       child: Text('M',
            //           style: TextStyle(
            //             color: Color.fromARGB(238, 238, 242, 248),
            //           ))),
            // )),
            SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
              child: Image.asset('assets/wode/bottomIcon.jpg'),
            )
          ],
        ),
      ),
    );
  }


  Widget personWidget() {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/wode/wodetopBackground.jpg'),
        fit: BoxFit.fill,
      )),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            ///1. 通知图标
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                GestureDetector(
                  onTap: () {
                    print('object');
                  },
                  child: Image.asset(
                    'assets/wode/news.png',
                    width: 24,
                    height: 24,
                  ),
                )
              ],
            ),

            ///2. 间距 19
            SizedBox(height: 19),

            ///3. 图标 + 立即登录 + 图标 >
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                        child: Image.asset(
                      'assets/wode/pictrue.png',
                      width: 55.0,
                      height: 55.0,
                    )),
                    SizedBox(width: 10),
                    Text(
                      '立即登录',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/wode/arrow.png',
                  width: 14.0,
                  height: 14.0,
                ),
              ],
            ),

            ///间距
            SizedBox(height: 53),
          ],
        ),
      ),
    );
  }
}

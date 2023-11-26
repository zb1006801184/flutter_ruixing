import 'package:flutter/material.dart';

class RXHomePag extends StatefulWidget {
  const RXHomePag({super.key});

  @override
  State<RXHomePag> createState() => _RXHomePagState();
}

class _RXHomePagState extends State<RXHomePag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 0),
            child: Center(
              child: Text('首页')
            ),
          )
        ],
      ),
    );
  }
}
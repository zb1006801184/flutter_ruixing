import 'package:flutter/material.dart';

class OureListWidget extends StatelessWidget {
  final String leftImageNameStr;
  final String titleStr;
  final String rightImageNameStr;

  const OureListWidget(
      {super.key,
      required this.leftImageNameStr,
      required this.titleStr,
      required this.rightImageNameStr});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: 50,
          color: Colors.white,
          padding: EdgeInsets.only(left: 15, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    leftImageNameStr,
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(width: 5),
                  Text(
                    titleStr,
                    style: TextStyle(fontSize: 14.0, color: Colors.black87),
                  ),
                ],
              ),
              Image.asset(
                rightImageNameStr,
                width: 14,
                height: 14,
              ),
            ],
          ),
        ),
        Container(
          height: 1,
          color: Color.fromARGB(238, 238, 242, 248),
        )
      ],
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = const Color.fromARGB(248, 248, 248, 248)
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    final Offset startPoint = Offset(0.0, 50.0);
    final Offset endPoint = Offset(430.0, 50.0);

    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

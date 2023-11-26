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
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 51,
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
    );

    return Stack(
      children: [
        Positioned(
          left: 15,
          top: 15,
          child: Image.asset(
            leftImageNameStr,
            width: 20,
            height: 20,
          ),
        ),
        Positioned(
          left: 50,
          top: 15,
          child: Text(
            titleStr,
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
          ),
        ),
        Positioned(
          left: screenWidth - 33,
          top: 18,
          child: Image.asset(
            rightImageNameStr,
            width: 14,
            height: 14,
          ),
        ),
        Positioned(
          left: 0,
          top: 50,
          child: CustomPaint(
            painter: LinePainter(),
          ),
        ),
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

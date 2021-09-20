import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double x;
  final double y;

  CustomContainer({this.x: 0.0, this.y: 0.0});

  @override
  Widget build(BuildContext context) {
    print("x: $x, y: $y");
    return Transform(
      transform: Matrix4.translationValues(0.0, y, 0.0),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15, left: 8, right: 8),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(15)),
          ),
          Transform(
            transform: Matrix4.translationValues(x + 13, 0, 0.0),
            child: Container(
              margin: EdgeInsets.only(top: 7),
              width: 30,
              height: 15,
              child: CustomPaint(
                painter: PicoContainer(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PicoContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height);
    path.lineTo(size.width * .5, size.height * .1);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

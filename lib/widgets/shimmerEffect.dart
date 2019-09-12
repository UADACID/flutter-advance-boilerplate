import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerEffect extends StatelessWidget {
  final double height;
  final double width;

  ShimmerEffect({this.width = 100.0, this.height = 100.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.2),
      height: height,
      width: width,
      child: Shimmer.fromColors(
        period: Duration(milliseconds: 1000),
        baseColor: Color(0xc4c4c4),
        highlightColor: Colors.white24,
        child: Container(
          color: Colors.black,
        ),
      ),
    );
  }
}

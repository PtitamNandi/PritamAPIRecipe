import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class shimmerLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 20,
      itemBuilder: ((context, index) {
        return Container(
          margin: EdgeInsets.all(20),
          width: size.width,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomWidget.circular(height: 50, width: 64),
                SizedBox(
                  height: 8,
                ),
                CustomWidget.rectangular(
                  height: 20,
                  width: size.width * 0.35,
                ),
                SizedBox(
                  height: 8,
                ),
                CustomWidget.rectangular(
                  height: 70,
                  width: size.width - 85,
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  const CustomWidget.rectangular(
      {this.width = double.infinity, required this.height})
      : this.shapeBorder = const RoundedRectangleBorder();

  const CustomWidget.circular(
      {this.width = double.infinity,
      required this.height,
      this.shapeBorder = const CircleBorder()});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: Colors.grey.shade400,
        highlightColor: Colors.grey[300]!,
        period: Duration(seconds: 2),
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            color: Colors.grey[400]!,
            shape: shapeBorder,
          ),
        ),
      );
}

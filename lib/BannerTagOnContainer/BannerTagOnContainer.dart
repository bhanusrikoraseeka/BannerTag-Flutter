import 'package:flutter/material.dart';

class BannerTagOnContainer extends StatelessWidget {
  const BannerTagOnContainer({super.key, required this.bannerTagWord});
  final String bannerTagWord;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 120,
      decoration: ShapeDecoration(
        color: const Color(0xFFFCFCFC),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Container(
        width: 32,
        height: 32,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(),
        child: Stack(
          children: [
            Positioned(
              left: -12.27,
              top: 48.32,
              right: 15.67,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(-0.99),
                child: Container(
                  width: 10.66,
                  height: 15.33,
                  color: const Color.fromRGBO(66, 148, 136, 1.0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, bottom: 2.0),
                        child: Text(
                          bannerTagWord,
                          style: const TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
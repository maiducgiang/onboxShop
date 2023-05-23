import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background_shop.png',
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            child: Column(
              children: [
                Container(
                  height: 500,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 1,
                    ),
                    itemImage(
                        path: 'assets/images/box.png',
                        title: "New Deal",
                        onTap: () {}),
                    itemImage(
                        path: 'assets/images/computer.png',
                        title: "Computer",
                        onTap: () {},
                        size: 90),
                    itemImage(
                        path: 'assets/images/camera.png',
                        title: "Camera",
                        onTap: () {},
                        size: 100),
                    itemImage(
                        path: 'assets/images/iphone.png',
                        title: "Phone",
                        onTap: () {},
                        size: 90),
                    const SizedBox(
                      width: 1,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }

  Widget itemImage(
      {required String path,
      required String title,
      Function? onTap,
      int size = 60}) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Column(
        children: [
          Image.asset(
            path,
            width: size.toDouble(),
          ),
          SizedBox(
            height: 8,
          ),
          Text(title)
        ],
      ),
    );
  }
}

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
    final theme = Theme.of(context);
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
                  height: 150,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: SvgPicture.asset(
                          "assets/images/help.svg",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 350,
                  // padding: EdgeInsets.only(top: 80),
                  alignment: Alignment.center,
                  child: PageView(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/laptop.png",
                            width: 200,
                            height: 200,
                          ),
                          // const SizedBox(
                          //   height: 12,
                          // ),
                          Image.asset(
                            "assets/images/950.png",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 40,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/iphone10.png",
                            width: 200,
                            height: 200,
                          ),
                          // const SizedBox(
                          //   height: 12,
                          // ),
                          Image.asset(
                            "assets/images/950.png",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 40,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/camera_60d.png",
                            width: 200,
                            height: 200,
                          ),
                          // const SizedBox(
                          //   height: 12,
                          // ),
                          Image.asset(
                            "assets/images/950.png",
                            fit: BoxFit.cover,
                            width: 120,
                            height: 40,
                          ),
                        ],
                      )
                    ],
                  ),
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
                ),
                const SizedBox(
                  height: 24,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 100,
                  child: Image.asset(
                    "assets/images/button.png",
                    width: 200,
                    height: 200,
                    fit: BoxFit.contain,
                  ),
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

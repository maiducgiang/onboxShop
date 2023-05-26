import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onbox_shop/data/product/product.dart';
import 'package:onbox_shop/ui/list_product/list_product_screen.dart';
import 'package:onbox_shop/ui/open_box/cubit/open_box_cubit.dart';
import 'package:onbox_shop/ui/open_box/cubit/open_box_state.dart';
import 'package:onbox_shop/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class OpenBox extends StatefulWidget {
  const OpenBox({super.key});

  @override
  State<OpenBox> createState() => _OpenBoxState();
}

Future<void> _makePhoneCall() async {
  print("giang");
  await launch('tel:${0374168445}');
  print("giang");
}

class _OpenBoxState extends State<OpenBox> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocProvider(
      create: (context) => OpenBoxCubit()..onInit(""),
      child: BlocConsumer<OpenBoxCubit, OpenBoxState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
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
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 24,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _makePhoneCall();
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                padding: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: SvgPicture.asset(
                                  "assets/images/help.svg",
                                  height: 20,
                                  width: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 350,
                        // padding: EdgeInsets.only(top: 80),
                        alignment: Alignment.center,
                        child: Stack(
                          children: [
                            PageView(
                              controller: controller,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ListProductScreen(
                                                title: "laptop",
                                              )),
                                    );
                                  },
                                  child: Column(
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
                                        height: 45,
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ListProductScreen(
                                                title: "iphone",
                                              )),
                                    );
                                  },
                                  child: Column(
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
                                        height: 45,
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ListProductScreen(
                                                title: "camera",
                                              )),
                                    );
                                  },
                                  child: Column(
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
                                        height: 45,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  if ((controller.page ?? 0).toInt() <= 1) {
                                    controller.animateToPage(
                                        (controller.page ?? 0).toInt() + 1,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  }
                                },
                                child: Container(
                                  width: 36,
                                  height: 36,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(right: 12),
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white),
                                  child: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                ),
                              ),
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
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListProductScreen(
                                            title: "laptop",
                                          )),
                                );
                              },
                              size: 90),
                          itemImage(
                              path: 'assets/images/camera.png',
                              title: "Camera",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListProductScreen(
                                            title: "camera",
                                          )),
                                );
                              },
                              size: 100),
                          itemImage(
                              path: 'assets/images/iphone.png',
                              title: "Phone",
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ListProductScreen(
                                            title: "iphone",
                                          )),
                                );
                              },
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
                        width: MediaQuery.of(context).size.width - 24,
                        alignment: Alignment.centerLeft,
                        child: SvgPicture.asset(
                          "assets/images/text.svg",
                          height: 20,
                          width: 20,
                        ),
                      ),
                      Container(
                        // width: double.infinity,
                        alignment: Alignment.center,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: const LinearGradient(
                              colors: [
                                Color(0xffFFFFFF),
                                Color(0xffFCEF7FF),
                              ],
                              begin: Alignment
                                  .topCenter, //begin of the gradient color
                              end: Alignment
                                  .bottomCenter, //end of the gradient color
                              stops: [
                                0.3,
                                10,
                              ] //stops for individual color
                              //set the stops number equal to numbers of color
                              ),
                        ),
                        margin: EdgeInsets.all(12),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (ProductModel item in state.listProduct) ...[
                                Container(
                                  margin: const EdgeInsets.all(12),
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(item.image)),
                                        ),
                                      )),
                                      Container(
                                        height: 30,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            gradient: const LinearGradient(
                                                colors: [
                                                  Color(0xff4772EE),
                                                  Color(0xff3BBCFA),
                                                ],
                                                begin: Alignment
                                                    .centerLeft, //begin of the gradient color
                                                end: Alignment
                                                    .centerRight, //end of the gradient color
                                                stops: [
                                                  0.3,
                                                  10,
                                                ] //stops for individual color
                                                //set the stops number equal to numbers of color
                                                ),
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(20))),
                                        child: Text(
                                          Utils.vndFormat(item.price),
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        },
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

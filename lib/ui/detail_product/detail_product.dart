import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:onbox_shop/colors.dart';
import 'package:onbox_shop/data/product/product.dart';
import 'package:onbox_shop/ui/detail_product/indicator.dart';
import 'package:onbox_shop/utils.dart';
import 'package:share_plus/share_plus.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Container(
              width: width,
              height: height,
              // height: height,
              decoration: BoxDecoration(color: AppColors.primaryColos),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 400,
                            color: Colors.white,
                            child: PageView.builder(
                                itemCount: 3,
                                onPageChanged: (index) {
                                  setState(() {
                                    count = index;
                                  });
                                },
                                itemBuilder: (context, index) {
                                  return Visibility(
                                    visible: widget.productModel != null,
                                    child: SizedBox(
                                      height: 400,
                                      // child: FittedBox(
                                      //   fit: BoxFit.cover,
                                      //   child: CachedNetworkImage(
                                      //     progressIndicatorBuilder:
                                      //         (context, url, progress) =>
                                      //             Center(
                                      //       child: CircularProgressIndicator(
                                      //         value: progress.progress,
                                      //       ),
                                      //     ),
                                      //     imageUrl: widget.productModel.image,
                                      //   ),
                                      // ),
                                    ),
                                  );
                                }),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 10,
                            right: 10,
                            child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int index = 0; index < 3; index++)
                                    Indicator(
                                      isActive: count == index ? true : false,
                                    )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Visibility(
                                visible: widget.productModel != null,
                                child: Text(
                                  widget.productModel.name,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 21,
                                      // height: 0.4,
                                      letterSpacing: 0.4,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                )),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Visibility(
                                    visible: widget.productModel != null,
                                    child: Text(
                                      Utils.vndFormat(
                                          widget.productModel!.price),
                                      // "${formatCurrency(controller.productModel.value!.price.toDouble())} đ",
                                      maxLines: 2,
                                      style: TextStyle(
                                          fontSize: 28,
                                          letterSpacing: 0.4,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700),
                                    )),
                                GestureDetector(
                                  onTap: () {
                                    Share.share(
                                        '${widget.productModel.name} '
                                        '- ${widget.productModel.price}'
                                        '- ${widget.productModel.detail}',
                                        subject: widget.productModel.name);
                                  },
                                  child: Container(
                                    width: 42,
                                    height: 42,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: const Icon(
                                      Icons.share,
                                      size: 24,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      // const SizedBox(
                      //   height: 12,
                      // ),
                      Container(
                        height: 500,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 16),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 12,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              child: Text(
                                widget.productModel!.detail,
                                style: TextStyle(
                                    color: Color(0xff4F4F4F),
                                    fontSize: 16,
                                    height: 1.7,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 0.4),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  // Get.offNamed(Routes.HOME);
                },
                child: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 50, left: 10),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[200]),
                  child: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: width,
                  height: 120,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: GestureDetector(
                    onTap: () {
                      showGeneralDialog(
                        context: context,
                        barrierColor: Colors.black.withOpacity(0.8),
                        barrierDismissible: false,
                        barrierLabel: 'dialog',
                        transitionDuration: const Duration(milliseconds: 200),
                        pageBuilder: (_, __, ___) {
                          return Center(
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Material(
                                type: MaterialType.transparency,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Đặt hàng',
                                      style: TextStyle(
                                          color: AppColors.primaryColos,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      height: 55,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color:
                                                  Colors.grey.withOpacity(0.6)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Họ tên',
                                            hintStyle: TextStyle(
                                                color: Colors.grey
                                                    .withOpacity(0.8)),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      height: 55,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                              color:
                                                  Colors.grey.withOpacity(0.6)),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            hintText: 'Số điện thoại',
                                            hintStyle: TextStyle(
                                                color: Colors.grey
                                                    .withOpacity(0.8)),
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 15),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12),
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: AppColors
                                                          .primaryColos)),
                                              child: Center(
                                                child: Text(
                                                  'Huỷ',
                                                  style: TextStyle(
                                                      color: AppColors
                                                          .primaryColos,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 20),
                                        Expanded(
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12),
                                              decoration: BoxDecoration(
                                                  color: AppColors.primaryColos,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                      color: AppColors
                                                          .primaryColos)),
                                              child: const Center(
                                                child: Text(
                                                  'Đặt hàng',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      height: 62,
                      width: width,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xff4772EE),
                                Color(0xff3BBCFA),

                                //add more colors for gradient
                              ],
                              begin: Alignment
                                  .topLeft, //begin of the gradient color
                              end: Alignment
                                  .bottomRight, //end of the gradient color
                              stops: [
                                0.5,
                                0.8,
                              ] //stops for individual color
                              //set the stops number equal to numbers of color
                              ),
                          borderRadius: BorderRadius.circular(25),
                          color: AppColors.primaryColos),
                      child: const Text(
                        "Đặt hàng",
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )),
            ),
          ],
        ));
  }
}

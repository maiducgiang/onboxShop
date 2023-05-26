import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onbox_shop/colors.dart';
import 'package:onbox_shop/data/product/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onbox_shop/ui/detail_product/detail_product.dart';
import 'package:onbox_shop/ui/list_product/cubit/list_product_cubit.dart';
import 'package:onbox_shop/ui/list_product/cubit/list_product_state.dart';
import 'package:onbox_shop/utils.dart';
import 'package:url_launcher/url_launcher.dart';

class ListProductScreen extends StatefulWidget {
  const ListProductScreen({super.key, this.title});
  final String? title;
  @override
  State<ListProductScreen> createState() => _ListProductScreenState();
}

Future<void> _makePhoneCall() async {
  print("giang");
  await launch('tel:${0374168445}');
  print("giang");
}

class _ListProductScreenState extends State<ListProductScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListProductCubit()..onInit(widget.title ?? ""),
      child: BlocConsumer<ListProductCubit, ListProductState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Scaffold(
              backgroundColor: Colors.white,
              appBar: widget.title == null
                  ? AppBar(
                      backgroundColor: Colors.white,
                      automaticallyImplyLeading: false,
                      actions: [
                        GestureDetector(
                          onTap: () {
                            _makePhoneCall();
                          },
                          child: Container(
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
                        ),
                      ],
                      title: const Text(
                        "OnboxShop",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4f4f4f)),
                      ),
                    )
                  : null,
              body: SafeArea(
                child: Container(
                  color: AppColors.primaryColos,
                  child: Column(children: [
                    widget.title != null
                        ? Container(
                            height: 50,
                            child: AppBar(
                              backgroundColor: Colors.white,
                              elevation: 0.5,
                              title: Text(
                                widget.title ?? "",
                                style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff4f4f4f)),
                              ),
                              leading: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                  size: 26,
                                  color: Colors.grey,
                                ),
                              ),
                            ))
                        : Container(),
                    Container(
                        height: 70,
                        color: AppColors.primaryColos,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.listtitle.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                // context.<ListProductCubit>read
                                //     .selectTitle(controller.listtitle[index]);
                                context
                                    .read<ListProductCubit>()
                                    .selectTitle(state.listtitle[index]);
                              },
                              child: Container(
                                height: 15,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: state.listStatusTitle[index] == false
                                        ? Colors.white
                                        : Colors.blue,
                                    borderRadius: BorderRadius.circular(26)),
                                child: Text(
                                  state.listtitle[index],
                                  style: TextStyle(
                                      color:
                                          state.listStatusTitle[index] == false
                                              ? Colors.grey
                                              : Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            );
                          },
                        )),
                    Expanded(
                        child: Container(
                            color: AppColors.primaryColos,
                            padding: const EdgeInsets.all(10),
                            child: GridView.builder(
                              // physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 0.65,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 16,
                                crossAxisCount: 2,
                              ),
                              itemCount: state.listProduct.length,
                              itemBuilder: (BuildContext context, int index) {
                                ProductModel item = state.listProduct[index];
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              DetailProductScreen(
                                                productModel: item,
                                              )),
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(8),
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            20,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                            child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                    NetworkImage(item.image)),
                                          ),
                                        )),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          item.name,
                                          maxLines: 1,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          Utils.vndFormat(item.price),
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16,
                                              color: Color(0xffFF4757)),
                                        ),
                                        const SizedBox(height: 10),
                                        // Container(
                                        //   height: 48,
                                        //   padding: const EdgeInsets.symmetric(
                                        //       vertical: 8),
                                        //   decoration: BoxDecoration(
                                        //       color: AppColors.primaryColos,
                                        //       borderRadius:
                                        //           BorderRadius.circular(14)),
                                        //   child: const Center(
                                        //     child: Text(
                                        //       'Đặt hàng',
                                        //       style: TextStyle(
                                        //           color: Colors.white,
                                        //           fontSize: 16,
                                        //           fontWeight: FontWeight.w600),
                                        //     ),
                                        //   ),
                                        // ),
                                        // SizedBox(
                                        //   height: 5,
                                        // ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            )))
                  ]),
                ),
              ));
        },
      ),
    );
  }
}

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onbox_shop/data/product/product.dart';
import 'package:onbox_shop/ui/list_product/cubit/list_product_state.dart';

class ListProductCubit extends Cubit<ListProductState> {
  ListProductCubit() : super(ListProductState.initial());

  void onInit(String title) async {
    String jsonString =
        await rootBundle.loadString('assets/product_master_data.json');

    // Decode the JSON into a Dart list
    Map<String, dynamic> data = json.decode(jsonString);

    List<ProductModel> listProductResponse = (data['products'] as List)
        .map((item) => ProductModel.fromJson(item))
        .toList();

    emit(state.copyWith(listProduct: listProductResponse));
    // if (title.value == "Mẹ bầu") {
    //   listProduct.value = listProductResponse
    //       .where((element) =>
    //           element.role == "1" ||
    //           element.role == "2" ||
    //           element.role == "3" ||
    //           element.role == "4" ||
    //           element.role == "5")
    //       .toList();
    //   listtitle.value = [
    //     "all",
    //     "Sữa cho mẹ bầu",
    //     "Vitamin",
    //     "Quần áo",
    //     "Máy hút sữa",
    //     "Túi trữ sữa"
    //   ];
    //   listStatusTitle.value = [true, false, false, false, false, false];
    // }
    // if (title.value == "Bé trai") {
    //   listProduct.value =
    //       listProductResponse.where((element) => element.role == "6").toList();

    //   // listtitle.value = [
    //   //   "all",
    //   // ];
    //   // listStatusTitle.value = [true];
    // }
    // if (title.value == "Bé gái") {
    //   listProduct.value =
    //       listProductResponse.where((element) => element.role == "7").toList();
    //   //  listtitle.value = [
    //   //     "all",
    //   //   ];
    //   //   listStatusTitle.value = [true];
    // }
    // if (title.value == "Khác") {
    //   listProduct.value =
    //       listProductResponse.where((element) => element.role == "8").toList();
    //   //  listtitle.value = [
    //   //     "all",
    //   //   ];
    //   //   listStatusTitle.value = [true];
    // }
    // if (title.value == "Tất cả") {
    //   listProduct.value = listProductResponse;
    // }
    // super.onInit();
  }
}

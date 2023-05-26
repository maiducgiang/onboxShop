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
    if (title.contains("camera")) {
      listProductResponse =
          listProductResponse.where((element) => element.role == "1").toList();
    }
    if (title.contains("laptop")) {
      listProductResponse =
          listProductResponse.where((element) => element.role == "2").toList();
    }
    if (title.contains("iphone")) {
      listProductResponse =
          listProductResponse.where((element) => element.role == "3").toList();
    }
    if (title == null || title == "") {
      emit(state.copyWith(listtitle: [
        "all",
        "laptop",
        "camera",
        "iphone"
      ], listStatusTitle: [
        true,
        false,
        false,
        false,
      ]));
    }
    emit(state.copyWith(listProduct: listProductResponse));
  }

  void selectTitle(String title) async {
    List<bool> listStatus2 = List.from(state.listStatusTitle);
    for (int i = 0; i < state.listtitle.length; i++) {
      if (state.listtitle[i] == title) {
        listStatus2[i] = !listStatus2[i];
        // data1.inse;
        // data1.insert(i, !state.listStatusTitle[i]);

        emit(state.copyWith(listStatusTitle: listStatus2));
      }
    }
    String jsonString =
        await rootBundle.loadString('assets/product_master_data.json');

    // Decode the JSON into a Dart list
    Map<String, dynamic> data = json.decode(jsonString);

    List<ProductModel> listProductResponse = (data['products'] as List)
        .map((item) => ProductModel.fromJson(item))
        .toList();
    if (state.listStatusTitle[0] == true) {
      var data = listProductResponse
          .where((element) =>
              element.role == "1" ||
              element.role == "2" ||
              element.role == "3" ||
              element.role == "4" ||
              element.role == "5")
          .toList();
      emit(state.copyWith(listProduct: data));
    } else {
      List<ProductModel> dataList = [];
      if (state.listStatusTitle[1] == true) {
        dataList.addAll(listProductResponse
            .where((element) => element.role == "2")
            .toList());
      }
      if (state.listStatusTitle[2] == true) {
        dataList.addAll(listProductResponse
            .where((element) => element.role == "1")
            .toList());
      }
      if (state.listStatusTitle[3] == true) {
        dataList.addAll(listProductResponse
            .where((element) => element.role == "3")
            .toList());
      }
      emit(state.copyWith(listProduct: dataList));
    }
  }
}

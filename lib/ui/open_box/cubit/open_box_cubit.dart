import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:onbox_shop/data/product/product.dart';
import 'package:onbox_shop/ui/open_box/cubit/open_box_state.dart';

class OpenBoxCubit extends Cubit<OpenBoxState> {
  OpenBoxCubit() : super(OpenBoxState.initial());
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
}

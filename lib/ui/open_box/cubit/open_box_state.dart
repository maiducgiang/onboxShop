import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onbox_shop/data/product/product.dart';

part 'open_box_state.freezed.dart';

@freezed
class OpenBoxState with _$OpenBoxState {
  const factory OpenBoxState(
      {required bool isLoading,
      required List<String> listtitle,
      required List<bool> listStatusTitle,
      required List<ProductModel> listProduct}) = _OpenBoxState;

  factory OpenBoxState.initial() => const OpenBoxState(
      isLoading: false, listStatusTitle: [], listtitle: [], listProduct: []);
}

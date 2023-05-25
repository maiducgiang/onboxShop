import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:onbox_shop/data/product/product.dart';

part 'list_product_state.freezed.dart';

@freezed
class ListProductState with _$ListProductState {
  const factory ListProductState(
      {required bool isLoading,
      required List<ProductModel> listProduct}) = _ListProductState;

  factory ListProductState.initial() =>
      const ListProductState(isLoading: false, listProduct: []);
}

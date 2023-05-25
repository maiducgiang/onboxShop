// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<ProductModel> get listProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListProductStateCopyWith<ListProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListProductStateCopyWith<$Res> {
  factory $ListProductStateCopyWith(
          ListProductState value, $Res Function(ListProductState) then) =
      _$ListProductStateCopyWithImpl<$Res, ListProductState>;
  @useResult
  $Res call({bool isLoading, List<ProductModel> listProduct});
}

/// @nodoc
class _$ListProductStateCopyWithImpl<$Res, $Val extends ListProductState>
    implements $ListProductStateCopyWith<$Res> {
  _$ListProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listProduct = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listProduct: null == listProduct
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListProductStateCopyWith<$Res>
    implements $ListProductStateCopyWith<$Res> {
  factory _$$_ListProductStateCopyWith(
          _$_ListProductState value, $Res Function(_$_ListProductState) then) =
      __$$_ListProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<ProductModel> listProduct});
}

/// @nodoc
class __$$_ListProductStateCopyWithImpl<$Res>
    extends _$ListProductStateCopyWithImpl<$Res, _$_ListProductState>
    implements _$$_ListProductStateCopyWith<$Res> {
  __$$_ListProductStateCopyWithImpl(
      _$_ListProductState _value, $Res Function(_$_ListProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listProduct = null,
  }) {
    return _then(_$_ListProductState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_ListProductState implements _ListProductState {
  const _$_ListProductState(
      {required this.isLoading, required final List<ProductModel> listProduct})
      : _listProduct = listProduct;

  @override
  final bool isLoading;
  final List<ProductModel> _listProduct;
  @override
  List<ProductModel> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'ListProductState(isLoading: $isLoading, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListProductState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListProductStateCopyWith<_$_ListProductState> get copyWith =>
      __$$_ListProductStateCopyWithImpl<_$_ListProductState>(this, _$identity);
}

abstract class _ListProductState implements ListProductState {
  const factory _ListProductState(
      {required final bool isLoading,
      required final List<ProductModel> listProduct}) = _$_ListProductState;

  @override
  bool get isLoading;
  @override
  List<ProductModel> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$_ListProductStateCopyWith<_$_ListProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

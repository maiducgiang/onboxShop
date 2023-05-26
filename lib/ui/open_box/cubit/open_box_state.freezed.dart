// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_box_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OpenBoxState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<String> get listtitle => throw _privateConstructorUsedError;
  List<bool> get listStatusTitle => throw _privateConstructorUsedError;
  List<ProductModel> get listProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenBoxStateCopyWith<OpenBoxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenBoxStateCopyWith<$Res> {
  factory $OpenBoxStateCopyWith(
          OpenBoxState value, $Res Function(OpenBoxState) then) =
      _$OpenBoxStateCopyWithImpl<$Res, OpenBoxState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<String> listtitle,
      List<bool> listStatusTitle,
      List<ProductModel> listProduct});
}

/// @nodoc
class _$OpenBoxStateCopyWithImpl<$Res, $Val extends OpenBoxState>
    implements $OpenBoxStateCopyWith<$Res> {
  _$OpenBoxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listtitle = null,
    Object? listStatusTitle = null,
    Object? listProduct = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listtitle: null == listtitle
          ? _value.listtitle
          : listtitle // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listStatusTitle: null == listStatusTitle
          ? _value.listStatusTitle
          : listStatusTitle // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      listProduct: null == listProduct
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OpenBoxStateCopyWith<$Res>
    implements $OpenBoxStateCopyWith<$Res> {
  factory _$$_OpenBoxStateCopyWith(
          _$_OpenBoxState value, $Res Function(_$_OpenBoxState) then) =
      __$$_OpenBoxStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<String> listtitle,
      List<bool> listStatusTitle,
      List<ProductModel> listProduct});
}

/// @nodoc
class __$$_OpenBoxStateCopyWithImpl<$Res>
    extends _$OpenBoxStateCopyWithImpl<$Res, _$_OpenBoxState>
    implements _$$_OpenBoxStateCopyWith<$Res> {
  __$$_OpenBoxStateCopyWithImpl(
      _$_OpenBoxState _value, $Res Function(_$_OpenBoxState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? listtitle = null,
    Object? listStatusTitle = null,
    Object? listProduct = null,
  }) {
    return _then(_$_OpenBoxState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listtitle: null == listtitle
          ? _value._listtitle
          : listtitle // ignore: cast_nullable_to_non_nullable
              as List<String>,
      listStatusTitle: null == listStatusTitle
          ? _value._listStatusTitle
          : listStatusTitle // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_OpenBoxState implements _OpenBoxState {
  const _$_OpenBoxState(
      {required this.isLoading,
      required final List<String> listtitle,
      required final List<bool> listStatusTitle,
      required final List<ProductModel> listProduct})
      : _listtitle = listtitle,
        _listStatusTitle = listStatusTitle,
        _listProduct = listProduct;

  @override
  final bool isLoading;
  final List<String> _listtitle;
  @override
  List<String> get listtitle {
    if (_listtitle is EqualUnmodifiableListView) return _listtitle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listtitle);
  }

  final List<bool> _listStatusTitle;
  @override
  List<bool> get listStatusTitle {
    if (_listStatusTitle is EqualUnmodifiableListView) return _listStatusTitle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listStatusTitle);
  }

  final List<ProductModel> _listProduct;
  @override
  List<ProductModel> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'OpenBoxState(isLoading: $isLoading, listtitle: $listtitle, listStatusTitle: $listStatusTitle, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenBoxState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._listtitle, _listtitle) &&
            const DeepCollectionEquality()
                .equals(other._listStatusTitle, _listStatusTitle) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_listtitle),
      const DeepCollectionEquality().hash(_listStatusTitle),
      const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OpenBoxStateCopyWith<_$_OpenBoxState> get copyWith =>
      __$$_OpenBoxStateCopyWithImpl<_$_OpenBoxState>(this, _$identity);
}

abstract class _OpenBoxState implements OpenBoxState {
  const factory _OpenBoxState(
      {required final bool isLoading,
      required final List<String> listtitle,
      required final List<bool> listStatusTitle,
      required final List<ProductModel> listProduct}) = _$_OpenBoxState;

  @override
  bool get isLoading;
  @override
  List<String> get listtitle;
  @override
  List<bool> get listStatusTitle;
  @override
  List<ProductModel> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$_OpenBoxStateCopyWith<_$_OpenBoxState> get copyWith =>
      throw _privateConstructorUsedError;
}

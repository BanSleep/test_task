// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllItemsModel _$AllItemsModelFromJson(Map<String, dynamic> json) {
  return _AllItemsModel.fromJson(json);
}

/// @nodoc
mixin _$AllItemsModel {
  List<ItemModel> get result => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllItemsModelCopyWith<AllItemsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllItemsModelCopyWith<$Res> {
  factory $AllItemsModelCopyWith(
          AllItemsModel value, $Res Function(AllItemsModel) then) =
      _$AllItemsModelCopyWithImpl<$Res, AllItemsModel>;
  @useResult
  $Res call({List<ItemModel> result, int? total});
}

/// @nodoc
class _$AllItemsModelCopyWithImpl<$Res, $Val extends AllItemsModel>
    implements $AllItemsModelCopyWith<$Res> {
  _$AllItemsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllItemsModelImplCopyWith<$Res>
    implements $AllItemsModelCopyWith<$Res> {
  factory _$$AllItemsModelImplCopyWith(
          _$AllItemsModelImpl value, $Res Function(_$AllItemsModelImpl) then) =
      __$$AllItemsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemModel> result, int? total});
}

/// @nodoc
class __$$AllItemsModelImplCopyWithImpl<$Res>
    extends _$AllItemsModelCopyWithImpl<$Res, _$AllItemsModelImpl>
    implements _$$AllItemsModelImplCopyWith<$Res> {
  __$$AllItemsModelImplCopyWithImpl(
      _$AllItemsModelImpl _value, $Res Function(_$AllItemsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? total = freezed,
  }) {
    return _then(_$AllItemsModelImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllItemsModelImpl implements _AllItemsModel {
  const _$AllItemsModelImpl({required final List<ItemModel> result, this.total})
      : _result = result;

  factory _$AllItemsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllItemsModelImplFromJson(json);

  final List<ItemModel> _result;
  @override
  List<ItemModel> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  final int? total;

  @override
  String toString() {
    return 'AllItemsModel(result: $result, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllItemsModelImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_result), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllItemsModelImplCopyWith<_$AllItemsModelImpl> get copyWith =>
      __$$AllItemsModelImplCopyWithImpl<_$AllItemsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllItemsModelImplToJson(
      this,
    );
  }
}

abstract class _AllItemsModel implements AllItemsModel {
  const factory _AllItemsModel(
      {required final List<ItemModel> result,
      final int? total}) = _$AllItemsModelImpl;

  factory _AllItemsModel.fromJson(Map<String, dynamic> json) =
      _$AllItemsModelImpl.fromJson;

  @override
  List<ItemModel> get result;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$AllItemsModelImplCopyWith<_$AllItemsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

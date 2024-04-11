// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) loadInfo,
    required TResult Function(int page, int pageSize) changePage,
    required TResult Function(ItemModel model) addNewItem,
    required TResult Function(ItemModel model) editItem,
    required TResult Function(int page, int pageSize, String sort) sort,
    required TResult Function(String name) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? loadInfo,
    TResult? Function(int page, int pageSize)? changePage,
    TResult? Function(ItemModel model)? addNewItem,
    TResult? Function(ItemModel model)? editItem,
    TResult? Function(int page, int pageSize, String sort)? sort,
    TResult? Function(String name)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? loadInfo,
    TResult Function(int page, int pageSize)? changePage,
    TResult Function(ItemModel model)? addNewItem,
    TResult Function(ItemModel model)? editItem,
    TResult Function(int page, int pageSize, String sort)? sort,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInfo value) loadInfo,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(AddNewItem value) addNewItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(Sort value) sort,
    required TResult Function(Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInfo value)? loadInfo,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(AddNewItem value)? addNewItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(Sort value)? sort,
    TResult? Function(Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInfo value)? loadInfo,
    TResult Function(ChangePage value)? changePage,
    TResult Function(AddNewItem value)? addNewItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(Sort value)? sort,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadInfoImplCopyWith<$Res> {
  factory _$$LoadInfoImplCopyWith(
          _$LoadInfoImpl value, $Res Function(_$LoadInfoImpl) then) =
      __$$LoadInfoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int pageSize});
}

/// @nodoc
class __$$LoadInfoImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$LoadInfoImpl>
    implements _$$LoadInfoImplCopyWith<$Res> {
  __$$LoadInfoImplCopyWithImpl(
      _$LoadInfoImpl _value, $Res Function(_$LoadInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$LoadInfoImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadInfoImpl with DiagnosticableTreeMixin implements LoadInfo {
  _$LoadInfoImpl({required this.page, required this.pageSize});

  @override
  final int page;
  @override
  final int pageSize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.loadInfo(page: $page, pageSize: $pageSize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.loadInfo'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pageSize', pageSize));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadInfoImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadInfoImplCopyWith<_$LoadInfoImpl> get copyWith =>
      __$$LoadInfoImplCopyWithImpl<_$LoadInfoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) loadInfo,
    required TResult Function(int page, int pageSize) changePage,
    required TResult Function(ItemModel model) addNewItem,
    required TResult Function(ItemModel model) editItem,
    required TResult Function(int page, int pageSize, String sort) sort,
    required TResult Function(String name) search,
  }) {
    return loadInfo(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? loadInfo,
    TResult? Function(int page, int pageSize)? changePage,
    TResult? Function(ItemModel model)? addNewItem,
    TResult? Function(ItemModel model)? editItem,
    TResult? Function(int page, int pageSize, String sort)? sort,
    TResult? Function(String name)? search,
  }) {
    return loadInfo?.call(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? loadInfo,
    TResult Function(int page, int pageSize)? changePage,
    TResult Function(ItemModel model)? addNewItem,
    TResult Function(ItemModel model)? editItem,
    TResult Function(int page, int pageSize, String sort)? sort,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) {
    if (loadInfo != null) {
      return loadInfo(page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInfo value) loadInfo,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(AddNewItem value) addNewItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(Sort value) sort,
    required TResult Function(Search value) search,
  }) {
    return loadInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInfo value)? loadInfo,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(AddNewItem value)? addNewItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(Sort value)? sort,
    TResult? Function(Search value)? search,
  }) {
    return loadInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInfo value)? loadInfo,
    TResult Function(ChangePage value)? changePage,
    TResult Function(AddNewItem value)? addNewItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(Sort value)? sort,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (loadInfo != null) {
      return loadInfo(this);
    }
    return orElse();
  }
}

abstract class LoadInfo implements MainEvent {
  factory LoadInfo({required final int page, required final int pageSize}) =
      _$LoadInfoImpl;

  int get page;
  int get pageSize;
  @JsonKey(ignore: true)
  _$$LoadInfoImplCopyWith<_$LoadInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePageImplCopyWith<$Res> {
  factory _$$ChangePageImplCopyWith(
          _$ChangePageImpl value, $Res Function(_$ChangePageImpl) then) =
      __$$ChangePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int pageSize});
}

/// @nodoc
class __$$ChangePageImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$ChangePageImpl>
    implements _$$ChangePageImplCopyWith<$Res> {
  __$$ChangePageImplCopyWithImpl(
      _$ChangePageImpl _value, $Res Function(_$ChangePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$ChangePageImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePageImpl with DiagnosticableTreeMixin implements ChangePage {
  _$ChangePageImpl({this.page = 1, this.pageSize = 10});

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.changePage(page: $page, pageSize: $pageSize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.changePage'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pageSize', pageSize));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      __$$ChangePageImplCopyWithImpl<_$ChangePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) loadInfo,
    required TResult Function(int page, int pageSize) changePage,
    required TResult Function(ItemModel model) addNewItem,
    required TResult Function(ItemModel model) editItem,
    required TResult Function(int page, int pageSize, String sort) sort,
    required TResult Function(String name) search,
  }) {
    return changePage(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? loadInfo,
    TResult? Function(int page, int pageSize)? changePage,
    TResult? Function(ItemModel model)? addNewItem,
    TResult? Function(ItemModel model)? editItem,
    TResult? Function(int page, int pageSize, String sort)? sort,
    TResult? Function(String name)? search,
  }) {
    return changePage?.call(page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? loadInfo,
    TResult Function(int page, int pageSize)? changePage,
    TResult Function(ItemModel model)? addNewItem,
    TResult Function(ItemModel model)? editItem,
    TResult Function(int page, int pageSize, String sort)? sort,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInfo value) loadInfo,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(AddNewItem value) addNewItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(Sort value) sort,
    required TResult Function(Search value) search,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInfo value)? loadInfo,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(AddNewItem value)? addNewItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(Sort value)? sort,
    TResult? Function(Search value)? search,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInfo value)? loadInfo,
    TResult Function(ChangePage value)? changePage,
    TResult Function(AddNewItem value)? addNewItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(Sort value)? sort,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class ChangePage implements MainEvent {
  factory ChangePage({final int page, final int pageSize}) = _$ChangePageImpl;

  int get page;
  int get pageSize;
  @JsonKey(ignore: true)
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewItemImplCopyWith<$Res> {
  factory _$$AddNewItemImplCopyWith(
          _$AddNewItemImpl value, $Res Function(_$AddNewItemImpl) then) =
      __$$AddNewItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemModel model});

  $ItemModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$AddNewItemImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$AddNewItemImpl>
    implements _$$AddNewItemImplCopyWith<$Res> {
  __$$AddNewItemImplCopyWithImpl(
      _$AddNewItemImpl _value, $Res Function(_$AddNewItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$AddNewItemImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ItemModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemModelCopyWith<$Res> get model {
    return $ItemModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$AddNewItemImpl with DiagnosticableTreeMixin implements AddNewItem {
  _$AddNewItemImpl({required this.model});

  @override
  final ItemModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.addNewItem(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.addNewItem'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewItemImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewItemImplCopyWith<_$AddNewItemImpl> get copyWith =>
      __$$AddNewItemImplCopyWithImpl<_$AddNewItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) loadInfo,
    required TResult Function(int page, int pageSize) changePage,
    required TResult Function(ItemModel model) addNewItem,
    required TResult Function(ItemModel model) editItem,
    required TResult Function(int page, int pageSize, String sort) sort,
    required TResult Function(String name) search,
  }) {
    return addNewItem(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? loadInfo,
    TResult? Function(int page, int pageSize)? changePage,
    TResult? Function(ItemModel model)? addNewItem,
    TResult? Function(ItemModel model)? editItem,
    TResult? Function(int page, int pageSize, String sort)? sort,
    TResult? Function(String name)? search,
  }) {
    return addNewItem?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? loadInfo,
    TResult Function(int page, int pageSize)? changePage,
    TResult Function(ItemModel model)? addNewItem,
    TResult Function(ItemModel model)? editItem,
    TResult Function(int page, int pageSize, String sort)? sort,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) {
    if (addNewItem != null) {
      return addNewItem(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInfo value) loadInfo,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(AddNewItem value) addNewItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(Sort value) sort,
    required TResult Function(Search value) search,
  }) {
    return addNewItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInfo value)? loadInfo,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(AddNewItem value)? addNewItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(Sort value)? sort,
    TResult? Function(Search value)? search,
  }) {
    return addNewItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInfo value)? loadInfo,
    TResult Function(ChangePage value)? changePage,
    TResult Function(AddNewItem value)? addNewItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(Sort value)? sort,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (addNewItem != null) {
      return addNewItem(this);
    }
    return orElse();
  }
}

abstract class AddNewItem implements MainEvent {
  factory AddNewItem({required final ItemModel model}) = _$AddNewItemImpl;

  ItemModel get model;
  @JsonKey(ignore: true)
  _$$AddNewItemImplCopyWith<_$AddNewItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditItemImplCopyWith<$Res> {
  factory _$$EditItemImplCopyWith(
          _$EditItemImpl value, $Res Function(_$EditItemImpl) then) =
      __$$EditItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemModel model});

  $ItemModelCopyWith<$Res> get model;
}

/// @nodoc
class __$$EditItemImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$EditItemImpl>
    implements _$$EditItemImplCopyWith<$Res> {
  __$$EditItemImplCopyWithImpl(
      _$EditItemImpl _value, $Res Function(_$EditItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$EditItemImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as ItemModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemModelCopyWith<$Res> get model {
    return $ItemModelCopyWith<$Res>(_value.model, (value) {
      return _then(_value.copyWith(model: value));
    });
  }
}

/// @nodoc

class _$EditItemImpl with DiagnosticableTreeMixin implements EditItem {
  _$EditItemImpl({required this.model});

  @override
  final ItemModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.editItem(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.editItem'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditItemImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditItemImplCopyWith<_$EditItemImpl> get copyWith =>
      __$$EditItemImplCopyWithImpl<_$EditItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) loadInfo,
    required TResult Function(int page, int pageSize) changePage,
    required TResult Function(ItemModel model) addNewItem,
    required TResult Function(ItemModel model) editItem,
    required TResult Function(int page, int pageSize, String sort) sort,
    required TResult Function(String name) search,
  }) {
    return editItem(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? loadInfo,
    TResult? Function(int page, int pageSize)? changePage,
    TResult? Function(ItemModel model)? addNewItem,
    TResult? Function(ItemModel model)? editItem,
    TResult? Function(int page, int pageSize, String sort)? sort,
    TResult? Function(String name)? search,
  }) {
    return editItem?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? loadInfo,
    TResult Function(int page, int pageSize)? changePage,
    TResult Function(ItemModel model)? addNewItem,
    TResult Function(ItemModel model)? editItem,
    TResult Function(int page, int pageSize, String sort)? sort,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) {
    if (editItem != null) {
      return editItem(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInfo value) loadInfo,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(AddNewItem value) addNewItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(Sort value) sort,
    required TResult Function(Search value) search,
  }) {
    return editItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInfo value)? loadInfo,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(AddNewItem value)? addNewItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(Sort value)? sort,
    TResult? Function(Search value)? search,
  }) {
    return editItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInfo value)? loadInfo,
    TResult Function(ChangePage value)? changePage,
    TResult Function(AddNewItem value)? addNewItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(Sort value)? sort,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (editItem != null) {
      return editItem(this);
    }
    return orElse();
  }
}

abstract class EditItem implements MainEvent {
  factory EditItem({required final ItemModel model}) = _$EditItemImpl;

  ItemModel get model;
  @JsonKey(ignore: true)
  _$$EditItemImplCopyWith<_$EditItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SortImplCopyWith<$Res> {
  factory _$$SortImplCopyWith(
          _$SortImpl value, $Res Function(_$SortImpl) then) =
      __$$SortImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int page, int pageSize, String sort});
}

/// @nodoc
class __$$SortImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$SortImpl>
    implements _$$SortImplCopyWith<$Res> {
  __$$SortImplCopyWithImpl(_$SortImpl _value, $Res Function(_$SortImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? pageSize = null,
    Object? sort = null,
  }) {
    return _then(_$SortImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SortImpl with DiagnosticableTreeMixin implements Sort {
  _$SortImpl({required this.page, required this.pageSize, required this.sort});

  @override
  final int page;
  @override
  final int pageSize;
  @override
  final String sort;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.sort(page: $page, pageSize: $pageSize, sort: $sort)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.sort'))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pageSize', pageSize))
      ..add(DiagnosticsProperty('sort', sort));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.sort, sort) || other.sort == sort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, pageSize, sort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      __$$SortImplCopyWithImpl<_$SortImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) loadInfo,
    required TResult Function(int page, int pageSize) changePage,
    required TResult Function(ItemModel model) addNewItem,
    required TResult Function(ItemModel model) editItem,
    required TResult Function(int page, int pageSize, String sort) sort,
    required TResult Function(String name) search,
  }) {
    return sort(page, pageSize, this.sort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? loadInfo,
    TResult? Function(int page, int pageSize)? changePage,
    TResult? Function(ItemModel model)? addNewItem,
    TResult? Function(ItemModel model)? editItem,
    TResult? Function(int page, int pageSize, String sort)? sort,
    TResult? Function(String name)? search,
  }) {
    return sort?.call(page, pageSize, this.sort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? loadInfo,
    TResult Function(int page, int pageSize)? changePage,
    TResult Function(ItemModel model)? addNewItem,
    TResult Function(ItemModel model)? editItem,
    TResult Function(int page, int pageSize, String sort)? sort,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) {
    if (sort != null) {
      return sort(page, pageSize, this.sort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInfo value) loadInfo,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(AddNewItem value) addNewItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(Sort value) sort,
    required TResult Function(Search value) search,
  }) {
    return sort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInfo value)? loadInfo,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(AddNewItem value)? addNewItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(Sort value)? sort,
    TResult? Function(Search value)? search,
  }) {
    return sort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInfo value)? loadInfo,
    TResult Function(ChangePage value)? changePage,
    TResult Function(AddNewItem value)? addNewItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(Sort value)? sort,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (sort != null) {
      return sort(this);
    }
    return orElse();
  }
}

abstract class Sort implements MainEvent {
  factory Sort(
      {required final int page,
      required final int pageSize,
      required final String sort}) = _$SortImpl;

  int get page;
  int get pageSize;
  String get sort;
  @JsonKey(ignore: true)
  _$$SortImplCopyWith<_$SortImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SearchImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl with DiagnosticableTreeMixin implements Search {
  _$SearchImpl({required this.name});

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainEvent.search(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainEvent.search'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int page, int pageSize) loadInfo,
    required TResult Function(int page, int pageSize) changePage,
    required TResult Function(ItemModel model) addNewItem,
    required TResult Function(ItemModel model) editItem,
    required TResult Function(int page, int pageSize, String sort) sort,
    required TResult Function(String name) search,
  }) {
    return search(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int page, int pageSize)? loadInfo,
    TResult? Function(int page, int pageSize)? changePage,
    TResult? Function(ItemModel model)? addNewItem,
    TResult? Function(ItemModel model)? editItem,
    TResult? Function(int page, int pageSize, String sort)? sort,
    TResult? Function(String name)? search,
  }) {
    return search?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int page, int pageSize)? loadInfo,
    TResult Function(int page, int pageSize)? changePage,
    TResult Function(ItemModel model)? addNewItem,
    TResult Function(ItemModel model)? editItem,
    TResult Function(int page, int pageSize, String sort)? sort,
    TResult Function(String name)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadInfo value) loadInfo,
    required TResult Function(ChangePage value) changePage,
    required TResult Function(AddNewItem value) addNewItem,
    required TResult Function(EditItem value) editItem,
    required TResult Function(Sort value) sort,
    required TResult Function(Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadInfo value)? loadInfo,
    TResult? Function(ChangePage value)? changePage,
    TResult? Function(AddNewItem value)? addNewItem,
    TResult? Function(EditItem value)? editItem,
    TResult? Function(Sort value)? sort,
    TResult? Function(Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadInfo value)? loadInfo,
    TResult Function(ChangePage value)? changePage,
    TResult Function(AddNewItem value)? addNewItem,
    TResult Function(EditItem value)? editItem,
    TResult Function(Sort value)? sort,
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements MainEvent {
  factory Search({required final String name}) = _$SearchImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ItemModel> items, int total, int page, int pageSize)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ItemModel> items, int total, int page, int pageSize)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ItemModel> items, int total, int page, int pageSize)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ItemModel> items, int total, int page, int pageSize)
        loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ItemModel> items, int total, int page, int pageSize)?
        loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ItemModel> items, int total, int page, int pageSize)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements MainState {
  factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements Loading {
  _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'MainState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ItemModel> items, int total, int page, int pageSize)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ItemModel> items, int total, int page, int pageSize)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ItemModel> items, int total, int page, int pageSize)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MainState {
  factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ItemModel> items, int total, int page, int pageSize});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? total = null,
    Object? page = null,
    Object? pageSize = null,
  }) {
    return _then(_$LoadedImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadedImpl with DiagnosticableTreeMixin implements Loaded {
  _$LoadedImpl(
      {required final List<ItemModel> items,
      this.total = 0,
      this.page = 1,
      this.pageSize = 10})
      : _items = items;

  final List<ItemModel> _items;
  @override
  List<ItemModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainState.loaded(items: $items, total: $total, page: $page, pageSize: $pageSize)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainState.loaded'))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('total', total))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('pageSize', pageSize));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_items), total, page, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ItemModel> items, int total, int page, int pageSize)
        loaded,
  }) {
    return loaded(items, total, page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ItemModel> items, int total, int page, int pageSize)?
        loaded,
  }) {
    return loaded?.call(items, total, page, pageSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ItemModel> items, int total, int page, int pageSize)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items, total, page, pageSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MainState {
  factory Loaded(
      {required final List<ItemModel> items,
      final int total,
      final int page,
      final int pageSize}) = _$LoadedImpl;

  List<ItemModel> get items;
  int get total;
  int get page;
  int get pageSize;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

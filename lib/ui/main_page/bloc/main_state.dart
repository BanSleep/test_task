part of 'main_bloc.dart';

@freezed
abstract class MainState with _$MainState {
  factory MainState.initial() = Initial;

  factory MainState.loading() = Loading;

  factory MainState.loaded(
      {required List<ItemModel> items,
      @Default(0) int total,
      @Default(1) int page,
      @Default(10) int pageSize}) = Loaded;
}

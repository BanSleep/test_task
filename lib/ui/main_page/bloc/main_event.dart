part of 'main_bloc.dart';

@freezed
abstract class MainEvent with _$MainEvent {
  factory MainEvent.loadInfo({required int page, required int pageSize}) =
      LoadInfo;

  factory MainEvent.changePage({
    @Default(1) int page,
    @Default(10) int pageSize,
  }) = ChangePage;

  factory MainEvent.addNewItem({required ItemModel model}) = AddNewItem;

  factory MainEvent.editItem({required ItemModel model}) = EditItem;

  factory MainEvent.sort({
    required int page,
    required int pageSize,
    required String sort,
  }) = Sort;

  factory MainEvent.search({required String name}) = Search;
}

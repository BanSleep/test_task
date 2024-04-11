import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:test_task/data/models/items/item.dart';
import 'package:test_task/domain/repository/auth/auth_repository.dart';
import 'package:test_task/domain/repository/items/items_repository.dart';

part 'main_event.dart';

part 'main_state.dart';

part 'main_bloc.freezed.dart';

@injectable
class MainBloc extends Bloc<MainEvent, MainState> {
  final ItemsRepository itemsRepository;
  final AuthRepository authRepository;

  MainBloc(
    this.itemsRepository,
    this.authRepository,
  ) : super(Initial()) {
    on<LoadInfo>(_loadInfo);
    on<ChangePage>(_changePage);
    on<AddNewItem>(_addNewItem);
    on<EditItem>(_editItem);
    on<Sort>(_sortItems);
    on<Search>(_searchItems);
  }

  Future<void> _loadInfo(LoadInfo event, Emitter emit) async {
    await authRepository.getAccessToken();
    final res = await itemsRepository.getAllItems(event.page, event.pageSize);
    emit(
      Loaded(
        items: res.result,
        total: res.total ?? 0,
        page: event.page,
        pageSize: event.pageSize,
      ),
    );
  }

  Future<void> _changePage(ChangePage event, Emitter emit) async {
    final res = await itemsRepository.getAllItems(event.page, event.pageSize);
    emit(
      (state as Loaded).copyWith(
        pageSize: event.pageSize,
        page: event.page,
        items: res.result,
        total: res.total ?? 0,
      ),
    );
  }

  Future<void> _addNewItem(AddNewItem event, Emitter emit) async {
    await itemsRepository.addNewItem(event.model);
    final res = await itemsRepository.getAllItems(
      (state as Loaded).page,
      (state as Loaded).pageSize,
    );
    emit((state as Loaded).copyWith(items: res.result, total: res.total ?? 0));
  }

  Future<void> _editItem(EditItem event, Emitter emit) async {
    await itemsRepository.editItem(event.model);
    final res = await itemsRepository.getAllItems(
      (state as Loaded).page,
      (state as Loaded).pageSize,
    );
    emit((state as Loaded).copyWith(items: res.result, total: res.total ?? 0));
  }

  Future<void> _sortItems(Sort event, Emitter emit) async {
    final res =
        await itemsRepository.sortItems(event.page, event.pageSize, event.sort);
    emit(
      (state as Loaded).copyWith(
        items: res.result,
        total: res.total ?? 0,
      ),
    );
  }

  Future<void> _searchItems(Search event, Emitter emit) async {}
}

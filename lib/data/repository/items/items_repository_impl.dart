import 'package:injectable/injectable.dart';
import 'package:test_task/data/datasource/items/items_datasource.dart';
import 'package:test_task/data/models/items/item.dart';
import 'package:test_task/data/models/items/items.dart';
import 'package:test_task/domain/repository/items/items_repository.dart';

@Singleton(as: ItemsRepository)
class ItemsRepositoryImpl extends ItemsRepository {
  final ItemsDataSource itemsDataSource;
  ItemsRepositoryImpl(
    this.itemsDataSource,
  );
  @override
  Future<AllItemsModel> getAllItems(int page, int pageSize) async {
    final result = await itemsDataSource.getAllItems(page, pageSize);
    return result;
  }

  @override
  Future<void> addNewItem(ItemModel model) async {
    await itemsDataSource.addNewItem(model);
  }

  @override
  Future<void> editItem(ItemModel model) async {
    await itemsDataSource.editItem(model);
  }

  @override
  Future<AllItemsModel> sortItems(int page, int pageSize, String sort) async {
    final res = await itemsDataSource.sortItems(sort, page, pageSize);
    return res;
  }
}

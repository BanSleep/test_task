import 'package:test_task/data/models/items/item.dart';
import 'package:test_task/data/models/items/items.dart';

abstract class ItemsDataSource {
  Future<AllItemsModel> getAllItems(int page, int pageSize);

  Future<void> addNewItem(ItemModel model);

  Future<void> editItem(ItemModel model);

  Future<AllItemsModel> sortItems(
    String sort,
    int page,
    int pageSize,
  );
}

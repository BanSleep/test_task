import 'package:injectable/injectable.dart';
import 'package:test_task/data/api_client.dart';
import 'package:test_task/data/datasource/items/items_datasource.dart';
import 'package:test_task/data/models/items/item.dart';
import 'package:test_task/data/models/items/items.dart';

@Singleton(as: ItemsDataSource)
class ItemsDataSourceImpl extends ItemsDataSource {
  @override
  Future<AllItemsModel> getAllItems(int page, int pageSize) async {
    final response = await ApiClient.get(
      'items',
      query: {
        'page': page,
        'pageSize': pageSize,
      },
    );
    AllItemsModel model = AllItemsModel.fromJson(response.data);
    return model;
  }

  @override
  Future<void> addNewItem(ItemModel model) async {
    await ApiClient.post('items', {
      'name': model.name,
      'description': model.description,
      'measurement_units': model.measurementUnits,
      'code': model.code,
    });
  }

  @override
  Future<void> editItem(ItemModel model) async {
    await ApiClient.patch(
      'items/${model.id}',
      {
        'name': model.name,
        'description': model.description,
        'measurement_units': model.measurementUnits,
        'code': model.code,
      },
    );
  }

  @override
  Future<AllItemsModel> sortItems(String sort, int page, int pageSize) async {
    final response = await ApiClient.get(
      'items',
      query: {
        'page': page,
        'pageSize': pageSize,
        'sortOrder': sort,
      },
    );
    AllItemsModel model = AllItemsModel.fromJson(response.data);
    return model;
  }
}

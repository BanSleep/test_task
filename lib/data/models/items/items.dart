import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_task/data/models/items/item.dart';

part 'items.freezed.dart';
part 'items.g.dart';

@freezed
class AllItemsModel with _$AllItemsModel {
  const factory AllItemsModel({
    required List<ItemModel> result,
    int? total,
  }) = _AllItemsModel;
  factory AllItemsModel.fromJson(Map<String, dynamic> json) =>
      _$AllItemsModelFromJson(json);
}

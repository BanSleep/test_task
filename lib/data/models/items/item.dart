import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    String? id,
    String? name,
    String? description,
    String? measurementUnits,
    String? deposit,
    String? code,
    int? minQuantity,
    int? price,
    int? rentPrice,
    int? accountingPrice,
    int? type,
    List<dynamic>? customValues,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) => ItemModel(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        measurementUnits: json['measurement_units'],
        deposit: json['deposit'],
        code: json['code'],
        minQuantity: json['min_quantity'],
        price: json['price'],
        rentPrice: json['rent_price'],
        accountingPrice: json['accounting_price'],
        type: json['type'],
        customValues: json['custom_values'],
      );
}

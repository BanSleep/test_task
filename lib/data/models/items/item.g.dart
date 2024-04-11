// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemModelImpl _$$ItemModelImplFromJson(Map<String, dynamic> json) =>
    _$ItemModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      measurementUnits: json['measurementUnits'] as String?,
      deposit: json['deposit'] as String?,
      code: json['code'] as String?,
      minQuantity: json['minQuantity'] as int?,
      price: json['price'] as int?,
      rentPrice: json['rentPrice'] as int?,
      accountingPrice: json['accountingPrice'] as int?,
      type: json['type'] as int?,
      customValues: json['customValues'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ItemModelImplToJson(_$ItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'measurementUnits': instance.measurementUnits,
      'deposit': instance.deposit,
      'code': instance.code,
      'minQuantity': instance.minQuantity,
      'price': instance.price,
      'rentPrice': instance.rentPrice,
      'accountingPrice': instance.accountingPrice,
      'type': instance.type,
      'customValues': instance.customValues,
    };

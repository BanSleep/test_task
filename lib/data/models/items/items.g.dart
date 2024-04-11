// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllItemsModelImpl _$$AllItemsModelImplFromJson(Map<String, dynamic> json) =>
    _$AllItemsModelImpl(
      result: (json['result'] as List<dynamic>)
          .map((e) => ItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$AllItemsModelImplToJson(_$AllItemsModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'total': instance.total,
    };

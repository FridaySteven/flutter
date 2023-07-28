// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Home _$HomeFromJson(Map<String, dynamic> json) => Home(
      title: json['title'] as String?,
      subTitle: json['subTitle'] as String?,
      isSetRemider: json['isSetRemider'] as bool?,
    );

Map<String, dynamic> _$HomeToJson(Home instance) => <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'isSetRemider': instance.isSetRemider,
    };

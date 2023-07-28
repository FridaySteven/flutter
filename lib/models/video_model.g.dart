// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Video _$VideoFromJson(Map<String, dynamic> json) => Video(
      id: json['id'] as int?,
      creatorName: json['creatorName'] as String?,
      creatorImg: json['creatorImg'] as String?,
      creatorFollower: json['creatorFollower'] as int?,
      contentViewer: json['contentViewer'] as int?,
      contentVideoUrl: json['contentVideoUrl'] as String?,
      contentThumbnail: json['contentThumbnail'] as String?,
      contentTitle: json['contentTitle'] as String?,
      contentDesc: json['contentDesc'] as String?,
      contentCreatedDT: json['contentCreatedDT'] == null
          ? null
          : DateTime.parse(json['contentCreatedDT'] as String),
      contentLikes: json['contentLikes'] as int?,
      contentUnLikes: json['contentUnLikes'] as int?,
    );

Map<String, dynamic> _$VideoToJson(Video instance) => <String, dynamic>{
      'id': instance.id,
      'creatorName': instance.creatorName,
      'creatorImg': instance.creatorImg,
      'creatorFollower': instance.creatorFollower,
      'contentViewer': instance.contentViewer,
      'contentVideoUrl': instance.contentVideoUrl,
      'contentThumbnail': instance.contentThumbnail,
      'contentTitle': instance.contentTitle,
      'contentDesc': instance.contentDesc,
      'contentCreatedDT': instance.contentCreatedDT?.toIso8601String(),
      'contentLikes': instance.contentLikes,
      'contentUnLikes': instance.contentUnLikes,
    };

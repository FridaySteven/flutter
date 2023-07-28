import 'package:json_annotation/json_annotation.dart';

part 'video_model.g.dart';

@JsonSerializable()
class Video {
  int? id;
  String? creatorName;
  String? creatorImg;
  int? creatorFollower;
  int? contentViewer;
  String? contentVideoUrl;
  String? contentThumbnail;
  String? contentTitle;
  String? contentDesc;
  DateTime? contentCreatedDT;
  int? contentLikes;
  int? contentUnLikes;

  Video({
    this.id,
    this.creatorName,
    this.creatorImg,
    this.creatorFollower,
    this.contentViewer,
    this.contentVideoUrl,
    this.contentThumbnail,
    this.contentTitle,
    this.contentDesc,
    this.contentCreatedDT,
    this.contentLikes,
    this.contentUnLikes,
  });

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoToJson(this);
}

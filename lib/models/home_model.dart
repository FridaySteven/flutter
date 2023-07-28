import 'package:json_annotation/json_annotation.dart';

part 'home_model.g.dart';

@JsonSerializable()
class Home {
  String? title;
  String? subTitle;
  bool? isSetRemider;

  Home({
    this.title,
    this.subTitle,
    this.isSetRemider,
  });

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);

  Map<String, dynamic> toJson() => _$HomeToJson(this);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @HiveType(typeId: 0) // Assign a unique typeId for this class
  const factory UserModel({
    @HiveField(0) required String campaignSubject,
    @HiveField(1) required String previewText,
    @HiveField(2) required String fromName,
    @HiveField(3) required String fromemail,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

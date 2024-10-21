// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<_$_UserModel> {
  @override
  final int typeId = 0;

  @override
  _$_UserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_UserModel(
      campaignSubject: fields[0] as String,
      previewText: fields[1] as String,
      fromName: fields[2] as String,
      fromemail: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_UserModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.campaignSubject)
      ..writeByte(1)
      ..write(obj.previewText)
      ..writeByte(2)
      ..write(obj.fromName)
      ..writeByte(3)
      ..write(obj.fromemail);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      campaignSubject: json['campaignSubject'] as String,
      previewText: json['previewText'] as String,
      fromName: json['fromName'] as String,
      fromemail: json['fromemail'] as String,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'campaignSubject': instance.campaignSubject,
      'previewText': instance.previewText,
      'fromName': instance.fromName,
      'fromemail': instance.fromemail,
    };

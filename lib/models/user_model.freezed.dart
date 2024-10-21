// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @HiveField(0)
  String get campaignSubject => throw _privateConstructorUsedError;
  @HiveField(1)
  String get previewText => throw _privateConstructorUsedError;
  @HiveField(2)
  String get fromName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get fromemail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@HiveField(0) String campaignSubject,
      @HiveField(1) String previewText,
      @HiveField(2) String fromName,
      @HiveField(3) String fromemail});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignSubject = null,
    Object? previewText = null,
    Object? fromName = null,
    Object? fromemail = null,
  }) {
    return _then(_value.copyWith(
      campaignSubject: null == campaignSubject
          ? _value.campaignSubject
          : campaignSubject // ignore: cast_nullable_to_non_nullable
              as String,
      previewText: null == previewText
          ? _value.previewText
          : previewText // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      fromemail: null == fromemail
          ? _value.fromemail
          : fromemail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String campaignSubject,
      @HiveField(1) String previewText,
      @HiveField(2) String fromName,
      @HiveField(3) String fromemail});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? campaignSubject = null,
    Object? previewText = null,
    Object? fromName = null,
    Object? fromemail = null,
  }) {
    return _then(_$_UserModel(
      campaignSubject: null == campaignSubject
          ? _value.campaignSubject
          : campaignSubject // ignore: cast_nullable_to_non_nullable
              as String,
      previewText: null == previewText
          ? _value.previewText
          : previewText // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      fromemail: null == fromemail
          ? _value.fromemail
          : fromemail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@HiveField(0) required this.campaignSubject,
      @HiveField(1) required this.previewText,
      @HiveField(2) required this.fromName,
      @HiveField(3) required this.fromemail});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @HiveField(0)
  final String campaignSubject;
  @override
  @HiveField(1)
  final String previewText;
  @override
  @HiveField(2)
  final String fromName;
  @override
  @HiveField(3)
  final String fromemail;

  @override
  String toString() {
    return 'UserModel(campaignSubject: $campaignSubject, previewText: $previewText, fromName: $fromName, fromemail: $fromemail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.campaignSubject, campaignSubject) ||
                other.campaignSubject == campaignSubject) &&
            (identical(other.previewText, previewText) ||
                other.previewText == previewText) &&
            (identical(other.fromName, fromName) ||
                other.fromName == fromName) &&
            (identical(other.fromemail, fromemail) ||
                other.fromemail == fromemail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, campaignSubject, previewText, fromName, fromemail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@HiveField(0) required final String campaignSubject,
      @HiveField(1) required final String previewText,
      @HiveField(2) required final String fromName,
      @HiveField(3) required final String fromemail}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @HiveField(0)
  String get campaignSubject;
  @override
  @HiveField(1)
  String get previewText;
  @override
  @HiveField(2)
  String get fromName;
  @override
  @HiveField(3)
  String get fromemail;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerInfoImpl _$$PlayerInfoImplFromJson(Map<String, dynamic> json) =>
    _$PlayerInfoImpl(
      playerId: json['playerId'] as String?,
      playerName: json['playerName'] as String?,
      age: json['age'] as String?,
      place: json['place'] as String?,
      gender: json['gender'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      playerType: json['playerType'] as String?,
      battingType: json['battingType'] as String?,
      ballingType: json['ballingType'] as String?,
      keeperType: json['keeperType'] as String?,
    );

Map<String, dynamic> _$$PlayerInfoImplToJson(_$PlayerInfoImpl instance) =>
    <String, dynamic>{
      'playerId': instance.playerId,
      'playerName': instance.playerName,
      'age': instance.age,
      'place': instance.place,
      'gender': instance.gender,
      'phoneNumber': instance.phoneNumber,
      'playerType': instance.playerType,
      'battingType': instance.battingType,
      'ballingType': instance.ballingType,
      'keeperType': instance.keeperType,
    };


import 'package:freezed_annotation/freezed_annotation.dart';
part 'player_info.freezed.dart';
part 'player_info.g.dart';

@freezed
class PlayerInfo with _$PlayerInfo {
  factory PlayerInfo({
     String? playerId,
  String? playerName,
  String? age,
  String? place,
  String? gender,
  String? phoneNumber,
  String? playerType,
  String? battingType,
  String? ballingType,
  String? keeperType,
  
  }) = _PlayerInfo;

  factory PlayerInfo.fromJson(Map<String, dynamic> json) =>
      _$PlayerInfoFromJson(json);
}

// class PlayerInfo {
//   String? playerId;
//   String? playerName;
//   String? age;
//   String? place;
//   String? gender;
//   String? phoneNumber;
//   String? playerType;
//   String? battingType;
//   String? ballingType;
//   String? keeperType;
//   PlayerInfo(
//       {this.playerId,
//       this.playerName,
//       this.age,
//       this.place,
//       this.gender,
//       this.phoneNumber,
//       this.playerType,
//       this.ballingType,
//       this.battingType,
//       this.keeperType});
//   factory PlayerInfo.fromJson(Map<String, dynamic> json) {
//     return PlayerInfo(
//       playerId: json['playerId'] as String?,
//       playerName: json['playerName'] as String?,
//       age: json['age'] as String?,
//       place: json['place'] as String?,
//       gender: json['gender'] as String?,
//       phoneNumber: json['phoneNumber'] as String?,
//       playerType: json['playerType'] as String?,
//       battingType: json['battingType'] as String?,
//       ballingType: json['ballingType'] as String?,
//       keeperType: json['keeperType'] as String?,
//     );
//   }
//   Map<String, dynamic> toJson() {
//     return {
//       'playerId': playerId,
//       'playerName': playerName,
//       'age': age,
//       'place': place,
//       'gender': gender,
//       'phoneNumber': phoneNumber,
//       'playerType': playerType,
//       'battingType': battingType,
//       'ballingType': ballingType,
//       'keeperType': keeperType,
//     };
//   }
// }

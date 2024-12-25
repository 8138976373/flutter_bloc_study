import 'package:dartz/dartz.dart';
import '../utils/di/injection.dart';
import '/services/dio_service.dart';
import 'package:injectable/injectable.dart';

import '../common/models/basic_response_model.dart';
import '../models/player/player_info.dart';
import '../utils/endpoints.dart';

abstract class PlayerService {
  Future<Either<String, BRModel<List<PlayerInfo>>>> playerListServiceApi();
  Future<Either<String, BRModel<PlayerInfo>>> addPlayerServiceApi();
}

@LazySingleton(as: PlayerService)
class IPlayerService implements PlayerService {
  DioService dioServices = getIt<DioService>();
  IPlayerService(this.dioServices);

  @override
  Future<Either<String, BRModel<List<PlayerInfo>>>>
      playerListServiceApi() async {
    try {
      final res =
          await dioServices.request(EndPoints.userList, method: Method.get);

      return res.fold(
        (l) => Left(l.message),
        (response) async => Right(
          BRModel<List<PlayerInfo>>.fromJson(
            response.data,
            (json) => (json as List)
                .map<PlayerInfo>(
                    (item) => PlayerInfo.fromJson(item as Map<String, dynamic>))
                .toList(),
          ),
        ),
      );
    } catch (e) {
      return Left("$e");
    }
  }

  @override
  Future<Either<String, BRModel<PlayerInfo>>> addPlayerServiceApi() async {
    try {
      final res =
          await dioServices.request(EndPoints.userList, method: Method.get);

      return res.fold(
        (l) => Left(l.message),
        (response) async => Right(
          BRModel<PlayerInfo>.fromJson(response.data,
              (json) => PlayerInfo.fromJson(json as Map<String, dynamic>)),
        ),
      );
    } catch (e) {
      return Left("$e");
    }
  }
}

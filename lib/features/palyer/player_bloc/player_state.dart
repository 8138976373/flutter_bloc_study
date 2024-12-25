part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    required ApiResponse<BRModel<List<PlayerInfo>>> playerListResponse,
  }) = _Initial;
  factory PlayerState.initial() => PlayerState(
        playerListResponse: ApiResponse<BRModel<List<PlayerInfo>>>( ),
      );
}



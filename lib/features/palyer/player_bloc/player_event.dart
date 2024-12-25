
part of 'player_bloc.dart';


// abstract class PlayerEvent extends Equatable {
//   @override
//   List<Object?> get props => [];
// }

// class PlayerChanged extends PlayerEvent {
//   final PlayerInfo appPlayer;

//   PlayerChanged({required this.appPlayer});

//   @override
//   List<Object?> get props => [appPlayer];
// }




@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.started() = _Started;
  const factory PlayerEvent.getPlayerApi() = _GetPlayerApi;
}

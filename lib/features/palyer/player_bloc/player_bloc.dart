import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../models/player/player_info.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/models/api_response.dart';
import '../../../common/models/basic_response_model.dart';

import '../../../repositories/player_service.dart';
// import 'player_state.dart';


part 'player_event.dart';
part 'player_state.dart';
part 'player_bloc.freezed.dart';


// }


@injectable
class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final PlayerService playerService;
  PlayerBloc(this.playerService) : super(PlayerState.initial()) {
    on<PlayerEvent>((event, emit) {});
    on<_GetPlayerApi>(_getAllUnitApi);
     on<_GetPlayerApi>(_addPlayerApi);
  }

  _getAllUnitApi(_GetPlayerApi event, emit) async {
    emit(state.copyWith.playerListResponse.call(loading: true));

    final response = await playerService.playerListServiceApi();

    return response.fold(
      (error) => emit(state.copyWith.playerListResponse
          .call(apiData: null, loading: false, errorMessage: error)),
      (data) {
        emit(state.copyWith.playerListResponse
            .call(apiData: data, loading: false, errorMessage: null));
      },
    );
  }
   _addPlayerApi(_GetPlayerApi event, emit) async {
    emit(state.copyWith.playerListResponse.call(loading: true));

    final response = await playerService.playerListServiceApi();

    return response.fold(
      (error) => emit(state.copyWith.playerListResponse
          .call(apiData: null, loading: false, errorMessage: error)),
      (data) {
        emit(state.copyWith.playerListResponse
            .call(apiData: data, loading: false, errorMessage: null));
      },
    );
  }
}
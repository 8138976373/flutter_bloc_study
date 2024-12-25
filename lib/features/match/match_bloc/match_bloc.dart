import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/match/match_info.dart';
import 'match_event.dart';
import 'match_state.dart';

class MatchBloc extends Bloc<MatchEvent, MatchState> {
  MatchBloc() : super(MatchState(playerData: MatchInfo())) {
    // on<MatchChanged>((event, emit) {
    //   switch (event.appMatch) {
    //     case AppMatch.LIGHT:
    //       emit(MatchState(playerData: lightMatch));
    //       break;
    //     case AppMatch.DARK:
    //       emit(MatchState(playerData: darkMatch));
    //       break;
    //     case AppMatch.COLOR:
    //       emit(MatchState(playerData: lightMatch));
    //       break;
    //   }
    // });
  }
}
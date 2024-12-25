import '/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(themeData: lightTheme)) {
    on<ThemeChanged>((event, emit) {
      switch (event.appTheme) {
        case AppTheme.LIGHT:
          emit(ThemeState(themeData: lightTheme));
          break;
        case AppTheme.DARK:
          emit(ThemeState(themeData: darkTheme));
          break;
        case AppTheme.COLOR:
          emit(ThemeState(themeData: lightTheme));
          break;
      }
    });
  }
}

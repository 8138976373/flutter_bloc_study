
// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

// theme_state.dart
enum AppTheme { LIGHT, DARK, COLOR } // Enum for themes

abstract class ThemeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class ThemeChanged extends ThemeEvent {
  final AppTheme appTheme;

  ThemeChanged({required this.appTheme});

  @override
  List<Object?> get props => [appTheme];
}




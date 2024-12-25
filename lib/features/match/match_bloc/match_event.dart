
// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

// theme_state.dart
enum AppMatch { LIGHT, DARK, COLOR } // Enum for themes

abstract class MatchEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class MatchChanged extends MatchEvent {
  final AppMatch appMatch;

  MatchChanged({required this.appMatch});

  @override
  List<Object?> get props => [appMatch];
}




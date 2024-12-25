
// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

// theme_state.dart
enum AppMember { LIGHT, DARK, COLOR } // Enum for themes

abstract class MemberEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class MemberChanged extends MemberEvent {
  final AppMember appMember;

  MemberChanged({required this.appMember});

  @override
  List<Object?> get props => [appMember];
}




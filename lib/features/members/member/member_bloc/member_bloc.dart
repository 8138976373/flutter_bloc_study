import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../models/members/member_info.dart';
import 'member_event.dart';
import 'member_state.dart';

class MemberBloc extends Bloc<MemberEvent, MemberState> {
  MemberBloc() : super(MemberState(playerData: MemberInfo())) {
    // on<MemberChanged>((event, emit) {
    //   switch (event.appMember) {
    //     case AppMember.LIGHT:
    //       emit(MemberState(playerData: lightMember));
    //       break;
    //     case AppMember.DARK:
    //       emit(MemberState(playerData: darkMember));
    //       break;
    //     case AppMember.COLOR:
    //       emit(MemberState(playerData: lightMember));
    //       break;
    //   }
    // });
  }
}
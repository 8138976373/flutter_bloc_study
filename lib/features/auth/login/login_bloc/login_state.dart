part of 'login_bloc.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoggedState extends LoginState {
  //  final User user;
  // const LoggedState(this.user);
}

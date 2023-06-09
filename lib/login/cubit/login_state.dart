part of 'login_cubit.dart';

// @immutable
// abstract class LoginState {
//   get email => null;
// }

// class LoginInitial extends LoginState {
//   late String email;
//   LoginInitial({required this.email});
// }

// class UserInValid extends LoginState {
//   final String errorMsg;
//   UserInValid(this.errorMsg);
// }

// class UserValid extends LoginState {}

// class UserLoading extends LoginState {}

abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {}

class LoginError extends LoginState {
  final String errorMessage;

  LoginError(this.errorMessage);
}

import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationState extends Equatable{
  const AuthenticationState();

  @override
  List<Object> get props => [];
}

class AuthenticationStateInitial extends AuthenticationState{
  const AuthenticationStateInitial();
}

class AuthenticationStateSuccess extends AuthenticationState{
  final User user;
  const AuthenticationStateSuccess({required this.user});
  @override
  List<Object> get props => [user];

  @override
  String toString() => 'AuthenticationStateSuccess, email: ${user.email}';
}
class AuthenticationStateFailure extends AuthenticationState{}
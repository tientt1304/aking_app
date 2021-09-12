import 'package:aking_app/events/authentication_event.dart';
import 'package:aking_app/repositories/user_repository.dart';
import 'package:aking_app/states/authentication_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>{
  final UserRepository _userRepository;
  //constructor
  AuthenticationBloc({required UserRepository userRepository}):
      assert(userRepository != null),
      _userRepository = userRepository,
      super(AuthenticationStateInitial());

  @override
  Stream<AuthenticationState> mapEventToState(AuthenticationEvent authenticationEvent) async*{
    /*if(authenticationEvent is AuthenticationEventStarted){
      final isSignedIn = await _userRepository.isSignIn();
      if(isSignedIn) {
        String user = _userRepository.getUser();
        yield AuthenticationStateSuccess(user: user);
      }
      else {
        yield AuthenticationStateFailure();
      }
    }
    else*/ if (authenticationEvent is AuthenticationEventLoggedIn){
      yield AuthenticationStateSuccess(user: _userRepository.getUser());
    } else if (authenticationEvent is AuthenticationEventLoggedOut){
      await _userRepository.signOut();
      yield AuthenticationStateFailure();
    }
  }
}
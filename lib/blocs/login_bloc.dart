import 'package:aking_app/events/login_event.dart';
import 'package:aking_app/repositories/user_repository.dart';
import 'package:aking_app/states/login_state.dart';
import 'package:aking_app/validators/validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  UserRepository _userRepository;
  //constructor
  LoginBloc({required UserRepository userRepository}):
      assert(userRepository != null),
      _userRepository = userRepository,
      super(LoginState.initial());
  /*@override
  Stream<Transition<LoginEvent, LoginState>> transformEvents(
      Stream<LoginEvent> loginEvents,
      TransitionFunction<LoginEvent, LoginState> transitionFunction,
      ){
    final debounceStream = loginEvents.where((loginEvent){
      return (lgoinEvent is LoginEventEmailChanged || loginEvent is LoginEventPasswordChanged);
    }).debounceTime(Duration(miliseconds: 300));
    final nonDebounceStream = loginEvents.where((loginEvent){
      return (loginEvent is! LoginEventEmailChanged && loginEvent is! LoginEventPasswordChanged);
    });
    return super.transformEvents(nonDebounceStream.mergeWith([debounceStream]),transitionFunction);
  }*/

  @override
  Stream<LoginState> mapEventToState(LoginEvent loginEvent) async*{
    final loginState = state;
    if(loginEvent is LoginEventEmailChanged){
      yield loginState.cloneAndUpdate(isValidEmail: Validators.isValidEmail(loginEvent.email));
    } else if(loginEvent is LoginEventPasswordChanged){
      yield loginState.cloneAndUpdate(isValidEmail: Validators.isValidPassword(loginEvent.password));
    } else if (loginEvent is LoginEventWithGooglePressed){
      try {
        await _userRepository.signInWithGoogle();
        yield LoginState.success();
      } catch(exception){
        yield LoginState.failure();
      }
    } else if(loginEvent is LoginEventWithEmailAndPasswordPressed){
      try{
        await _userRepository.signInWithEmailAndPassword(loginEvent.email, loginEvent.password);
        yield LoginState.success();
      } catch(_){
        yield LoginState.failure();
      }
    }
  }
}
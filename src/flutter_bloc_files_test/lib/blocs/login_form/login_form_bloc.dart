import 'dart:async';
import 'package:bloc/bloc.dart';
import 'login_form_barrel.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc() : super (LoginFormInitialState());

  @override
  Stream<LoginFormState> mapEventToState(LoginFormEvent event) async* {
  }
}

# flutter_bloc_files

### This is used to create **bloc** files for the [flutter_bloc](https://pub.dev/packages/flutter_bloc) package

## Usage
### 1. export the script
```bash
export PATH="$PATH:<path to the package>/flutter_bloc_files/bin"
```

### 2. In the root of the project run the following command
```bash
flutter_bloc_files login_form
```

### 3. Command line parameters
```bash
-f  | --force       Remove the existing floder and its contents
-a  | --all         Creat all files (bloc, event, states, barrel)
-bl | --bloc        Create bloc file
-e  | --event       Create event file
-s  | --state       Create stat file
-ba | --barrel      Create barrel file
```

### The files will be created if you run the following command
```bash
flutter_bloc_files login_form
```
```
- /login_form
    - login_form_bloc.dart
    - login_form_states.dart
    - login_form_events.dart
    - login_form_barrel.dart
- /bloc_barrel.dart (This will be created if there is no bloc_barrel.dart)
```

### Content of each file
#### login_form_bloc.dart
```dart
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'login_form_barrel.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc() : super (LoginFormInitialState());

  @override
  Stream<LoginFormState> mapEventToState(LoginFormEvent event) async* {
  }
}
```

#### login_form_states.dart
```dart
import 'package:equatable/equatable.dart';

abstract class LoginFormState extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginFormInitialState extends LoginFormState {}
```

#### login_form_events.dart
```dart
import 'package:equatable/equatable.dart';

abstract class LoginFormEvent extends Equatable {
  LoginFormEvent();
}
```

#### login_form_barrel.dart
```dart
export 'login_form_events.dart';
export 'login_form_states.dart';
export 'login_form_bloc.dart';
```

#### bloc_barrel.dart
```dart
...

export 'login_form/login_form_barrel.dart';
```
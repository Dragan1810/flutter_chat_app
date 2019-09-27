import 'package:rxdart/rxdart.dart';

class LoginBloc {
  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Observable<String> get email => _emailController.stream;
  Observable<String> get password => _passwordController.stream;
  Observable<bool> get submitValid =>
      Observable.combineLatest2(email, password, (e, p) => true);

  // change data
  Function(String) get changeEmail => _emailController.sink.add;
  Function(String) get changePassword => _passwordController.sink.add;

  submit() {
    final validEmail = _emailController.value;
    final validPassword = _passwordController.value;

    print('Email is $validEmail, and password is $validPassword');
  }

  void dispose() {
    _emailController.close();
    _passwordController.close();
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class FastMapsFirebaseUser {
  FastMapsFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

FastMapsFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<FastMapsFirebaseUser> fastMapsFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<FastMapsFirebaseUser>(
            (user) => currentUser = FastMapsFirebaseUser(user));

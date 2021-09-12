import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepository{
  final FirebaseAuth? _firebaseAuth;
  final GoogleSignIn? _googleSignIn;
  //constructor
  UserRepository({FirebaseAuth? firebaseAuth, GoogleSignIn? googleSignIn}):
      _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
      _googleSignIn = googleSignIn ?? GoogleSignIn();

  Future<User> signInWithGoogle() async{
    final GoogleSignInAccount? googleSignInAccount = await _googleSignIn!.signIn();
    final GoogleSignInAuthentication? googleSignInAuthentication = await googleSignInAccount!.authentication;
    final AuthCredential authCredential = GoogleAuthProvider.getCredential(
      idToken: googleSignInAuthentication!.accessToken,
      accessToken: googleSignInAuthentication.idToken
    );
    await _firebaseAuth!.signInWithCredential(authCredential);
    final currentUser = _firebaseAuth.currentUser();
    return currentUser;
  }

  String get getUser{
    final user = FirebaseAuth.instance.currentUser;
    return user?.email! ?? "";
  }

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await _firebaseAuth!.signInWithEmailAndPassword(
        email: email.trim(),
        password: password.trim()
    );
  }
  Future<void> createUserWithEmailAndPassword(String email, String password) async{
    await _firebaseAuth!.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password.trim()
    );
  }
  Future<void> signOut() async {
    Future.wait([
      _firebaseAuth!.signOut(),
      _googleSignIn!.signOut()
    ]);
  }
}
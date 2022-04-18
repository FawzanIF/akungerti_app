part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<SignInSignUpResult> signUp(
      String email, String password, String name, String selectedSchool) async {
    try {
      UserCredential credential = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);

      Users user = credential.user.convertToUser(name: name, selectedSchool: selectedSchool) as Users;

      await UserServices.updateUser(user);

      return SignInSignUpResult(user: user);
    } catch (e) {
      return SignInSignUpResult(message: e.toString().split(',')[1].trim());
    }
  }

  static Future<SignInSignUpResult> signIn(
      String email, String password) async {
    try {
      UserCredential credential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      Users user = (await credential.user.fromFireStore()) as Users;

      return SignInSignUpResult(user: user);
    } catch (e) {
      return SignInSignUpResult(message: e.toString().split(',')[1].trim());
    }
  }

  static Future<void> signOut() async {
    await _auth.signOut();
  }
  static Future<void> resetPassword(String email) async {
    await _auth.sendPasswordResetEmail(email: email);
  }
  static Stream<User> get userStream => _auth.authStateChanges();
}

class SignInSignUpResult {
  final Users user;
  final String message;

  SignInSignUpResult({this.user, this.message});
}

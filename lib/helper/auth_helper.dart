import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;
  register(
      {required String email,
      required String password,
      required String nama}) async {
    await auth
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      value.user!.updateDisplayName(nama);
    }).catchError((e) {
      print(e.toString());
    });
  }
}

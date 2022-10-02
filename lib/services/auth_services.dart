import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  Future<void> registerWithEmailandPass(
    String email,
    String password,
    String firstName,
    String lastName,
  ) async {
    final user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);

    //Add User to firestore
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.user!.uid)
        .set({
      'first name': firstName,
      'last name': lastName,
    });
  }

  Future<void> loginWithEmailAndPass(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> logOut() async {
    FirebaseAuth.instance.signOut();
  }
}

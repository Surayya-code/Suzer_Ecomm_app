import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<User?> singIn(String mail, String password) async {
    var user =
        await _auth.signInWithEmailAndPassword(email: mail, password: password);
    return user.user;
  }

  signOut() async {
    return await _auth.signOut();
  }

  Future<User?> currenUser(String name, String mail, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: mail, password: password);

    await _firestore.collection("Login").doc(user.user!.uid).set({
      "username": name,
      "mail": mail,
    });
    return user.user;
  }
}

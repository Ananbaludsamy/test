import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController password = TextEditingController();
  GlobalKey formKey = GlobalKey<FormState>();
  var isLoading = false.obs;

  final auth = FirebaseAuth.instance;
  final firestore = FirebaseAuth.instance;

  Future<void> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    try {
      await auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) {
        Get.snackbar(
          "Susscess",
          "Login Sucsessful",
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      });
    } catch (e) {
      Get.snackbar("Error", "error login",
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}

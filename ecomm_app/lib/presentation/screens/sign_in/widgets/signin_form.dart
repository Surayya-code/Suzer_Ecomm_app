import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../global/sized_box/sized_box.dart';
import '../../../../global/validations/app_validations.dart';
import '../../../widgets/global_default_button.dart';
import '../../../widgets/global_form_input.dart';
import '../../home/home_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  late final TextEditingController emailcontroller;
  late final TextEditingController passwordcontroller;
  late FocusNode emailFocus;
  late final FocusNode passwordFocus;
  final _formKey = GlobalKey<FormState>();

  final auth = FirebaseAuth.instance;
  final  users = FirebaseFirestore.instance.collection('signInUsers');
  late String email;
  late String password;

  @override
  void initState() {
    super.initState();
    emailcontroller = TextEditingController();
    emailFocus = FocusNode();
    passwordcontroller = TextEditingController();
    passwordFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    emailFocus.dispose();
    passwordcontroller.dispose();
    passwordFocus.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          GlobalFormInput(
            labelText: "Email",
            controller: emailcontroller,
            focus: emailFocus,
            prefixIcon: Icons.email,
            onChanged: (value) {
              email=value;
            },
            validator: (value) => AppInputValidation.setEmailValidation(value),
          ),
          AppSizedBox.sizedBox10h,
          GlobalFormInput(
            controller: passwordcontroller,
            focus: passwordFocus,
            prefixIcon: Icons.lock,
            obscureText: true,
            onChanged: (value) {
              password=value;
            },
            validator: (value) =>
                AppInputValidation.setPasswordValidation(value),
            labelText: "Password",
            
          ),
          AppSizedBox.sizedBox24h,
          GlobalDefaultButton(
            text: 'Sign in',
            onPress: () async {
              if (_formKey.currentState!.validate()) {
                try {
                  var userResult=await auth
                .signInWithEmailAndPassword(
                  email: email,
                  password: password);

                  users.add({
                        'password':password,
                        'sender':auth.currentUser?.email,
                      });
                      print('send message to firebase');
                      print(auth.currentUser?.email);


                  if (userResult!=null) {
                         Get.to(() => const HomeScreen());
                      }
                  print(userResult.user!.uid);
                } catch (e) {
                  print(e.toString());
                }
              }
            },
          ),
        ],
      ),
    );
  }
}

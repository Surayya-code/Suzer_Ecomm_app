import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../../global/sized_box/sized_box.dart';
import '../../../../global/snackbar/app_snackbar.dart';
import '../../../../global/styles/app_paddings.dart';
import '../../../../global/themes/app_colors.dart';
import '../../../../global/validations/app_validations.dart';
import '../../../widgets/global_default_button.dart';
import '../../../widgets/global_form_input.dart';
import '../../otp/otp_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late final TextEditingController emailController;
  late final TextEditingController nameController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;
  late final FocusNode emailFocus;
  late final FocusNode nameFocus;
  late final FocusNode passwordFocus;
  late final FocusNode confirmPasswordFocus;
  final _formKey = GlobalKey<FormState>();

  final auth = FirebaseAuth.instance;
  final  registrUsers = FirebaseFirestore.instance.collection('registration');
  late String name;
  late String email;
  late String password;
  late String confPass;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    nameController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    nameFocus = FocusNode();
    emailFocus = FocusNode();
    passwordFocus = FocusNode();
    confirmPasswordFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    nameFocus.dispose();
    emailFocus.dispose();
    passwordFocus.dispose();
    confirmPasswordFocus.dispose();
    _formKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: AppPaddings.paddingAll16,
        child: Column(
          children: [
            GlobalFormInput(
              labelText: "Name",
              controller: nameController,
              focus: nameFocus,
              prefixIcon: Icons.person,
              onChanged: (value) {
                name=value;
              },
              validator: (value) => AppInputValidation.setNameValidation(value),
            ),
            AppSizedBox.sizedBox10h,
            GlobalFormInput(
              labelText: "Email",
              controller: emailController,
              focus: emailFocus,
              prefixIcon: Icons.email,
              onChanged: (value) {
                email = value;
              },
              validator: (value) =>
                  AppInputValidation.setEmailValidation(value),
            ),
            AppSizedBox.sizedBox10h,
            GlobalFormInput(
              controller: passwordController,
              focus: passwordFocus,
              prefixIcon: Icons.lock,
              obscureText: true,
              onChanged: (value) {
                password = value;
              },
              validator: (value) =>
                  AppInputValidation.setPasswordValidation(value),
              labelText: "Password",
              
            ),
            AppSizedBox.sizedBox10h,
            GlobalFormInput(
              controller: confirmPasswordController,
              focus: confirmPasswordFocus,
              prefixIcon: Icons.lock,
              obscureText: true,
              onChanged: (value) {
                confPass=value;
              },
              validator: (value) =>
                  AppInputValidation.setPasswordValidation(value),
              labelText: "Confirm Password",
            ),
            AppSizedBox.sizedBox24h,
            GlobalDefaultButton(
                text: 'Continue',
                onPress: () async{
                  if (_formKey.currentState!.validate()) {
                    if (passwordController.text ==
                        confirmPasswordController.text) {
                        try {
                         var userResult = await auth.createUserWithEmailAndPassword(
                               email: email,
                               password: password); 
                               print(userResult.user!.email);

                        registrUsers.add({
                        'name':name,
                        'email':auth.currentUser?.email,
                        'password':password,
                        'confpass':confPass,
                      });
                      print('send message to firebase');
                      print(auth.currentUser?.email);
                        } catch (e) {
                          print(e.toString());
                          print('Errorr!');
                        }
                      Get.off(() => const OtpScreen());
                    } else {
                      AppSnackbar.showAppSnackbar(
                        context,
                        'Check password',
                        AppColors.errorColor,
                      );
                      confirmPasswordFocus.requestFocus();
                    }
                  }
                })
          ],
        ),
      ),
    );
  }
}

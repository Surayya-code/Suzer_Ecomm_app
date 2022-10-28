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
  // FirebaseFirestore firestore=FirebaseFirestore.instance;
  // final CollectionReference taskCollection=FirebaseFirestore.instance.collection('login');

  @override
  void initState() {
    super.initState();
    emailcontroller = TextEditingController(text: "sureyya@mail.ru");
    emailFocus = FocusNode();
    passwordcontroller = TextEditingController(text: "12345678");
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

//final AuthService _authService = AuthService();
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
            onChanged: (value) {},
            validator: (value) => AppInputValidation.setEmailValidation(value),
          ),
          AppSizedBox.sizedBox10h,
          GlobalFormInput(
            controller: passwordcontroller,
            focus: passwordFocus,
            prefixIcon: Icons.lock,
            onChanged: (value) {},
            validator: (value) =>
                AppInputValidation.setPasswordValidation(value),
            labelText: "Password",
          ),
          AppSizedBox.sizedBox24h,
          GlobalDefaultButton(
            text: 'Sign in',
            onPress: () {
              if (_formKey.currentState!.validate()) {
                Get.to(() => const HomeScreen());
                // _authService
                //     .singIn(emailcontroller.text, passwordcontroller.text)
                //     .then((value) =>
                //         Navigator.pushNamed(context, HomeScreen.routeName));
              }
            },
          ),
        ],
      ),
    );
  }
}

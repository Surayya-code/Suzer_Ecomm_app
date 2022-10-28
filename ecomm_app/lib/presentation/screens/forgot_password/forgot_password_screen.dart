import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../../global/sized_box/sized_box.dart';
import '../../../global/styles/app_paddings.dart';
import '../../../global/validations/app_validations.dart';
import '../../widgets/global_appbar.dart';
import '../../widgets/global_default_button.dart';
import '../../widgets/global_form_input.dart';
import '../../widgets/global_no_account.dart';
import '../sign_up/sing_up_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late final TextEditingController emailcontroller;
  late FocusNode emailFocus;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    emailcontroller = TextEditingController(text: "sureyya@mail.ru");
    emailFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    emailFocus.dispose();
    _formKey.currentState?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(
        title: 'Forgot Password',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.paddingAll16,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Please enter your email and we will send \nyou a link to return to your account',
                  textAlign: TextAlign.center,
                ),
                AppSizedBox.sizedBox16h,
                _buildEmailForm,
                AppSizedBox.sizedBox10h,
                NoAccountText(
                  accountText: 'Don\'t have an account?',
                  screenText: 'Register',
                  onTap: () => Get.to(() => const SignUpScreen()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get _buildEmailForm => Column(
        children: [
          GlobalFormInput(
            labelText: "Email",
            controller: emailcontroller,
            focus: emailFocus,
            prefixIcon: Icons.email,
            onChanged: (value) {},
            validator: (value) => AppInputValidation.setEmailValidation(value),
          ),
          AppSizedBox.sizedBox16h,
          GlobalDefaultButton(
            text: 'Continue',
            onPress: () {
              if (_formKey.currentState!.validate()) {
                Get.to(const ForgotPasswordScreen());
              }
            },
          ),
        ],
      );
}

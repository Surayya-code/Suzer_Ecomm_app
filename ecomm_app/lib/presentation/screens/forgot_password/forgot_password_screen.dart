import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../widgets/global_default_button.dart';
import '../../widgets/global_form_error.dart';
import '../../widgets/global_no_account.dart';
import '../login_success/login_success_screen.dart';
class ForgotPasswordScreen extends StatelessWidget {
  static String routeName="/forgot_password";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 24,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Please enter your email and we will send \nyou a link to return to your account',
              textAlign: TextAlign.center,
            ),
            ForgotPassForm(),
          ],
        ),
      ),
    ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String? email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              onSaved: (newValue) => email = newValue,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.remove(kEmailNullError);
                  });
                } else if (emailvalidatorRegExp.hasMatch(value) &&
                    errors.contains(kInvalinEmailError)) {
                  setState(() {
                    errors.remove(kInvalinEmailError);
                  });
                }
              },
              validator: (value) {
                if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                  setState(() {
                    errors.add(kEmailNullError);
                  });
                } else if (!emailvalidatorRegExp.hasMatch(value) &&
                    !errors.contains(kInvalinEmailError)) {
                  setState(() {
                    errors.add(kInvalinEmailError);
                  });
                }
                return null;
              },
              decoration: const InputDecoration(
                hintText: 'Your Email',
                labelText: 'Email',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                prefixIcon: Icon(Icons.mail),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FormError(errors: errors),
            const SizedBox(
              height: 10,
            ),
            GlobalDefaultButton(
                text: 'Continue',
                press: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                  }
                  
                }),
            const SizedBox(
              height: 10,
            ),
            const NoAccountText(),
          ],
        ),
      ),
    );
  }
}

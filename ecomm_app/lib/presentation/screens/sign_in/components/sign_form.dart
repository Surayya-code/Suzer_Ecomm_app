import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../widgets/global_default_button.dart';
import '../../../widgets/global_form_error.dart';

class SignForm extends StatefulWidget {
  // final IconData? suffixIcon;
  // final IconData? prefixIcon;
  const SignForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? email;
  String? password;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.remove(error!);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            emailFormInput(),
            const SizedBox(height: 10),
            passwordFormInput(),
            const SizedBox(height: 10),
            FormError(errors: errors),
            const SizedBox(height: 10),
            GlobalDefaultButton(
              text: 'Sign in',
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField emailFormInput() {
    return TextFormField(
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
          return "";
        } else if (!emailvalidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalinEmailError)) {
          setState(() {
            errors.add(kInvalinEmailError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Your Email',
        labelText: 'Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.mail),
      ),
    );
  }

  TextFormField passwordFormInput() {
    return TextFormField(
      obscureText: true,
      onSaved: ((newValue) => password = newValue),
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Password',
        labelText: 'Password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.lock),
        suffixIcon: Icon(Icons.visibility),
      ),
    );
  }
}

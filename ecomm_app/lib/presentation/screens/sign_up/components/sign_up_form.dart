import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../widgets/global_default_button.dart';
import '../../../widgets/global_form_error.dart';
import '../../complete_profile/complete_profile_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? fullname;
  String? email;
  String? password;
  String? confirmPassword;

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
            fullNameFormField(),
             const SizedBox(height: 10),
            emailFormField(),
             const SizedBox(height: 10),
            passwordFormField(),
             const SizedBox(height: 10),
            confirmPassFormField(),
             FormError(errors: errors),
             const SizedBox(height: 10),
             GlobalDefaultButton(text: 'Continue',
              press: (){
                if (_formKey.currentState!.validate()) {
                   Navigator.pushNamed(context,
               CompleteProfileScreen.routeName);
                }
              })
          ],
        ),
      ),
    );
  }

  TextFormField confirmPassFormField() {
    return TextFormField(
    obscureText: true,
    onSaved: ((newValue) => confirmPassword = newValue),
    onChanged: (value) {
      if (password==confirmPassword) {
        removeError(error: kMatchPassError);
      } 
    },
    validator: (value) {
      if (value!.isEmpty) {
        return "";
      } else if (password!=value) {
        addError(error: kMatchPassError);
        return "";
      }
      return null;
    },
    decoration: const InputDecoration(
      hintText: 'Password Again',
      labelText: 'Confirm Password',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      prefixIcon: Icon(Icons.lock),
      suffixIcon: Icon(Icons.visibility),
    ),
  );
  }

  TextFormField fullNameFormField() {
    return TextFormField(
    onSaved: ((newValue) => fullname = newValue),
    onChanged: (value) {
      if (value.isNotEmpty && errors.contains(kNameNullError)) {
        setState(() {
          errors.remove(kNameNullError);
        });
      } else if (value.length >= 4 && errors.contains(kInvalinNameError)) {
        setState(() {
          errors.remove(kInvalinNameError);
        });
      }
    },
    validator: (value) {
      if (value!.isEmpty && !errors.contains(kNameNullError)) {
        setState(() {
          errors.add(kNameNullError);
        });
        return "";
      } else if (value.length < 4 && !errors.contains(kInvalinNameError)) {
        setState(() {
          errors.add(kInvalinNameError);
        });
        return "";
      }
      return null;
    },
    decoration: const InputDecoration(
      hintText: 'Full Name',
      labelText: 'Name',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      prefixIcon: Icon(Icons.person),
    ),
  );
  }

  TextFormField passwordFormField() {
    return TextFormField(
    obscureText: true,
    onSaved: ((newValue) => password = newValue),
    onChanged: (value) {
     if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kPassNullError);
        }
        password=value;
    },
    validator: (value) {
      if (value!.isEmpty ) {
       addError(error: kPassNullError);
        return "";
      } else if (value.length < 8 ) {
       addError(error: kShortPassError);
       return "";
      }
      return null;
    },
    decoration: const InputDecoration(
      hintText: 'Password',
      labelText: 'Password',
      floatingLabelBehavior: FloatingLabelBehavior.always,
      prefixIcon: Icon(Icons.lock),
    ),
  );
  }

  TextFormField emailFormField() {
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
        });return "";
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
}
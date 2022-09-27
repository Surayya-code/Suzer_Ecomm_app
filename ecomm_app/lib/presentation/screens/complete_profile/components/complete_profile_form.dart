import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/presentation/screens/otp/otp_screen.dart';

import '../../../../constants.dart';
import '../../../widgets/global_default_button.dart';
import '../../../widgets/global_form_error.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstname;
  String? lastname;
  String? phonenumber;
  String? address;

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
              firstNameFormField(),
              const SizedBox(
                height: 25,
              ),
              lastNameFormField(),
              const SizedBox(
                height: 25,
              ),
              phoneNumberFormField(),
              const SizedBox(
                height: 25,
              ),
              addressFormField(),
              FormError(errors: errors),
              const SizedBox(
                height: 25,
              ),
              GlobalDefaultButton(
                  text: 'Continue',
                  press: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, OtpScreen.routeName);
                    }
                  })
            ],
          ),
        ));
  }

  TextFormField addressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Address',
        labelText: 'Enter your address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.location_on),
      ),
    );
  }

  TextFormField phoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phonenumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Phone number',
        labelText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(
          Icons.mobile_friendly_rounded,
        ),
      ),
    );
  }

  TextFormField lastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastname = newValue,
      decoration: const InputDecoration(
        hintText: 'Last name',
        labelText: 'Enter your last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  TextFormField firstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => firstname = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'First name',
        labelText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIcon: Icon(Icons.person),
      ),
    );
  }
}

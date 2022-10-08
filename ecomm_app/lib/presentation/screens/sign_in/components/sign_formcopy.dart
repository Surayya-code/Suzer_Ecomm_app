import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/presentation/widgets/global_form_input.dart';
import '../../../../constants.dart';
//import '../../../../service/auth.dart';
import '../../../widgets/global_default_button.dart';
import '../../../widgets/global_form_error.dart';
import '../../home/home_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email = " ";
  String password = " ";
  late final TextEditingController emailcontroller;
  late final TextEditingController passwordcontroller;
  late FocusNode emailFocus;
  late final FocusNode passwordFocus;
  final List<String> errors = [];

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
//final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GlobalFormInput(
              labelText: "Email",
              controller: emailcontroller,
              focus: emailFocus,
              prefixIcon: Icons.email,
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
            ),
            const SizedBox(height: 10),
            GlobalFormInput(
              controller: passwordcontroller,
              focus: passwordFocus,
              prefixIcon: Icons.lock,
              onChanged: (value) {
                if (value.isNotEmpty && errors.contains(kPassNullError)) {
                  setState(() {
                    errors.remove(kPassNullError);
                  });
                } else if (value.length >= 8 &&
                    errors.contains(kShortPassError)) {
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
                } else if (value.length < 8 &&
                    !errors.contains(kShortPassError)) {
                  setState(() {
                    errors.add(kShortPassError);
                  });
                  return "";
                }
                return null;
              },
              labelText: "Password",
            ),
            const SizedBox(height: 10),
            FormError(errors:errors ),
            const SizedBox(height: 10),
            GlobalDefaultButton(
              text: 'Sign in',
              press: () {
                // if (_formKey.currentState!.validate()) {
                //   _formKey.currentState!.save();
                //   _authService
                //       .singIn(emailcontroller.text, passwordcontroller.text)
                //       .then((value) =>
                //           Navigator.pushNamed(context, HomeScreen.routeName));
                // }
                 if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("You have been registred"),
                    backgroundColor: Colors.green,
                  ));
                   Navigator.pushNamed(context, HomeScreen.routeName);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Invalid Credentials"),
                    backgroundColor: Colors.red,
                  ));
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
  // TextFormField emailFormInput() {
  //   return TextFormField(
  //     keyboardType: TextInputType.emailAddress,
  //     controller: emailcontroller,
  //     onSaved: (newValue) => email = newValue,
  //     onChanged: (value) {
  //       if (value.isNotEmpty && errors.contains(kEmailNullError)) {
  //         setState(() {
  //           errors.remove(kEmailNullError);
  //         });
  //       } else if (emailvalidatorRegExp.hasMatch(value) &&
  //           errors.contains(kInvalinEmailError)) {
  //         setState(() {
  //           errors.remove(kInvalinEmailError);
  //         });
  //       }
  //     },
  //     validator: (value) {
  //       if (value!.isEmpty && !errors.contains(kEmailNullError)) {
  //         setState(() {
  //           errors.add(kEmailNullError);
  //         });
  //         return "";
  //       } else if (!emailvalidatorRegExp.hasMatch(value) &&
  //           !errors.contains(kInvalinEmailError)) {
  //         setState(() {
  //           errors.add(kInvalinEmailError);
  //         });
  //         return "";
  //       }
  //       return null;
  //     },
  //     decoration: const InputDecoration(
  //       //hintText: 'Your Email',
  //       labelText: 'Email',
  //       //floatingLabelBehavior: FloatingLabelBehavior.always,
  //       prefixIcon: Icon(Icons.mail),
  //     ),
  //   );
  // }

//   TextFormField passwordFormInput() {
//     return TextFormField(
//       controller: passwordcontroller,
//       obscureText: true,
//       onSaved: ((newValue) => password = newValue),
//       onChanged: (value) {
//         if (value.isNotEmpty && errors.contains(kPassNullError)) {
//           setState(() {
//             errors.remove(kPassNullError);
//           });
//         } else if (value.length >= 8 && errors.contains(kShortPassError)) {
//           setState(() {
//             errors.remove(kShortPassError);
//           });
//         }
//       },
//       validator: (value) {
//         if (value!.isEmpty && !errors.contains(kPassNullError)) {
//           setState(() {
//             errors.add(kPassNullError);
//           });
//           return "";
//         } else if (value.length < 8 && !errors.contains(kShortPassError)) {
//           setState(() {
//             errors.add(kShortPassError);
//           });
//           return "";
//         }
//         return null;
//       },
//       decoration: const InputDecoration(
//         hintText: 'Password',
//         labelText: 'Password',
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         prefixIcon: Icon(Icons.lock),
//         suffixIcon: Icon(Icons.visibility),
//       ),
//     );
//   }
// }



/*  TextFormField(
               validator: (v){
                if (v!.isEmpty || !v.contains("@") || !v.contains(".com")) {
                  return "Invalid Email!";
                }
              }, onSaved: (v){
                 email=v!;
                 print(email);
              },
                decoration: InputDecoration(
                  hintText: "Email",
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
                ),
                )
            ),
 TextFormField(
              obscureText: true,
              validator: (v){
                if (v!.isEmpty || v.length< 8  ) {
                  return "Password should be at least 8 characters!";
                }
              },
              onSaved: (v){
                password=v!;
                print(password);
              },
                decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
                ),
                )
            ),           
            
            
             */

// import 'package:flutter/material.dart';
// import 'package:suzer_ecom_appp/presentation/screens/home/home_screen.dart';
// import '../../../../constants.dart';
// import '../../../../service/auth.dart';
// import '../../../widgets/global_default_button.dart';
// import '../../../widgets/global_form_error.dart';


// class SignForm extends StatefulWidget {
//   final IconData? suffixIcon;
//   final IconData? prefixIcon;

//   const SignForm({
//     Key? key,
//     this.suffixIcon,
//     this.prefixIcon,
//   }) : super(key: key);

//   @override
//   State<SignForm> createState() => _SignFormState();
// }

// class _SignFormState extends State<SignForm> {
//   final _formKey = GlobalKey<FormState>();
//   final List<String> errors = [];
//   String? email;
//   String? password;

//   late final TextEditingController emailcontroller;
//   late final TextEditingController passwordcontroller;
//   late IconData prefixIcon;
//   late FocusNode focus;
//   late IconData suffixIcon;
//   late void Function(String) onChanged;
//   late String Function(String?) validator;
//   late bool isMail;
//   late String labelText;
//   late String hintText;

//   void addError({String? error}) {
//     if (!errors.contains(error)) {
//       setState(() {
//         errors.add(error!);
//       });
//     }
//   }

//   void removeError({String? error}) {
//     if (!errors.contains(error)) {
//       setState(() {
//         errors.remove(error!);
//       });
//     }
//   }

//   final AuthService _authService = AuthService();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             emailFormInput(),
//             const SizedBox(height: 10),
//             passwordFormInput(),
//             const SizedBox(height: 10),
//             FormError(errors: errors),
//             const SizedBox(height: 10),
//             GlobalDefaultButton(
//               text: 'Sign in',
//               press: () {
//                 if (_formKey.currentState!.validate()) {
//                   _formKey.currentState!.save();
//                   _authService
//                       .singIn(emailcontroller.text, passwordcontroller.text)
//                       .then((value) =>
//                           Navigator.pushNamed(context, HomeScreen.routeName));
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   TextFormField emailFormInput() {
//     return TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       controller: emailcontroller,
//       onSaved: (newValue) => email = newValue,
//       onChanged: (value) {
//         if (value.isNotEmpty && errors.contains(kEmailNullError)) {
//           setState(() {
//             errors.remove(kEmailNullError);
//           });
//         } else if (emailvalidatorRegExp.hasMatch(value) &&
//             errors.contains(kInvalinEmailError)) {
//           setState(() {
//             errors.remove(kInvalinEmailError);
//           });
//         }
//       },
//       validator: (value) {
//         if (value!.isEmpty && !errors.contains(kEmailNullError)) {
//           setState(() {
//             errors.add(kEmailNullError);
//           });
//           return "";
//         } else if (!emailvalidatorRegExp.hasMatch(value) &&
//             !errors.contains(kInvalinEmailError)) {
//           setState(() {
//             errors.add(kInvalinEmailError);
//           });
//           return "";
//         }
//         return null;
//       },
//       decoration: const InputDecoration(
//         //hintText: 'Your Email',
//         labelText: 'Email',
//         //floatingLabelBehavior: FloatingLabelBehavior.always,
//         prefixIcon: Icon(Icons.mail),
//       ),
//     );
//   }

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

// /*class GlobalFormInput extends StatelessWidget {
//   final GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   final TextEditingController? controller;
//   final IconData? suffixIcon;
//   final IconData prefixIcon;
//   final FocusNode focus;
//   final void Function(String) onChanged;
//   final String? Function(String?) validator;
//   final bool isMail;
//   final String labelText;
//   final String? hintText;

//   GlobalFormInput({
//     Key? key,
//      this.controller,
//     this.suffixIcon,
//     required this.prefixIcon,
//     required this.focus,
//     required this.onChanged,
//     required this.validator,
//     required this.isMail,
//     required this.labelText,
//      this.hintText,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formKey,
//       child: Column(
//         children: [
//           TextFormField(
//             onChanged: onChanged,
//             validator: validator,
//             controller: controller,
//             focusNode: focus,
//             decoration: InputDecoration(
//               prefixIcon: Icon(prefixIcon),
//               hintText: hintText,
//               labelText: labelText,
//               border: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//                 borderSide: BorderSide(
//                   color: isMail ? AppColors.lightGrey : AppColors.primaryBlue,
//                 ),
//               ),
//               errorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//                 borderSide: BorderSide(
//                   color: AppColors.errorColor,
//                 ),
//               ),
//               focusedErrorBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(5),
//                 borderSide: BorderSide(
//                   color: AppColors.errorColor,
//                 ),
//               ),
//             ),
//           ),
       
//         ],
//       ),
//     );
//   }
// }*/

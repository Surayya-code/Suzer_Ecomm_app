import 'package:suzer_ecom_appp/global/snackbar/app_snackbar.dart';
import 'package:get/get.dart';

class AppValidations {
  static void nameValidation() {}
  static void emailValidation() {}
  static void passwordValidation() {}
}

class AppInputValidation {
  static String? setPhoneValidation(String? value) {
    if (value == null || value.isEmpty) {
      AppSnackbar.getSnackBar("Phone number can't be empty.");
      return '';
    } else if (value.length < 12) {
      AppSnackbar.getSnackBar("Phone number's length must be equal to 9.");
      return '';
    } else if (!value.startsWith(RegExp('77|70|50|51|55|99'))) {
      AppSnackbar.getSnackBar("Phone number code isn't correct.");
      return '';
    }
    return null;
  }

  static String? setEmailValidation(String? value) {
    if (value == null || value.isEmpty) {
      AppSnackbar.getSnackBar("Email can't be empty.");
      return '';
    } else if (!value.isEmail) {
      AppSnackbar.getSnackBar("Email field doesn't contain email type.");
      return '';
    }
    return null;
  }

  static String? setNameValidation(String? value) {
    if (value == null || value.isEmpty) {
      AppSnackbar.getSnackBar("Name can't be empty.");
      return '';
    }
    return null;
  }

  static String? setPasswordValidation(String? value) {
    if (value == null || value.isEmpty) {
      AppSnackbar.getSnackBar("Password can't be empty.");
      return '';
    } else if (value.length < 8) {
      AppSnackbar.getSnackBar('Password\'s length must be minimum 8');
      return '';
    }
    return null;
  }
}

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class TextInputService {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  String? validateName(String value) {
    if (value.isEmpty) {
      return "Name cannot be empty.";
    }
    return null;
  }

  String? emailIsEmpty(String value) {
    if (value.isEmpty) {
      return "Enter a valid email address.";
    }
    return null;
  }

  String? validateEmail(String value) {
    if (value.isEmpty || !isValidEmail(value)) {
      return "Enter a valid email address.";
    }
    return null;
  }

  bool isValidEmail(String email) {
    // Regular expression for validating an email
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }

  String? validateUsername(String value) {
    if (!isValidUsername(value)) {
      return "Username must be 3-15 characters and can contain letters, numbers, and underscores only.";
    }
    return null;
  }

  bool isValidUsername(String username) {
    if (username.isEmpty) return false;
    if (username.length < 3 || username.length > 15) return false;
    final RegExp usernameRegex = RegExp(r'^[a-zA-Z0-9_]+$');
    return usernameRegex.hasMatch(username);
  }

  void clearInputs() {
    nameController.clear();
    emailController.clear();
  }
}

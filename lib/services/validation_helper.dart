// validation_helper.dart

class ValidationHelper {
  // Validate phone number (must be 10 digits)
  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) return 'Phone cannot be empty';

    if (!RegExp(r'^\d{10}$').hasMatch(value)) return 'Phone must be 10 digits';

    return null;
  }

  // Validate password (min 6 chars)
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) return 'Password cannot be empty';

    if (value.length < 6) return 'Password must be at least 6 characters';

    return null;
  }

  // Validate name (not empty)
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) return 'Name cannot be empty';

    return null;
  }

  // Confirm password matches password
  static String? validateConfirmPassword(String? password, String? confirmPassword) {
    if (confirmPassword == null || confirmPassword.isEmpty) return 'Confirm password cannot be empty';

    if (password != confirmPassword) return 'Passwords do not match';

    return null;
  }
}

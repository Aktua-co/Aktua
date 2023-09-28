  
  
  bool validateEmail(String email) {
  // Regular expression pattern for email validation
  final pattern = r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';
  final regExp = RegExp(pattern);
   if (!regExp.hasMatch(email)) {
    return false; // Invalid email format
  }
   return true; // Valid email format
}

String validatePassword(String value) {
  if (value.isEmpty) {
    return 'Password is required';
  }
  if (value.length < 8) {
    return 'Password must be at least 8 characters';
  }
  if (!value.contains(RegExp(r'[a-zA-Z0-9]'))) {
    return 'Password must contain at least one letter or digit';
  }
  if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return 'Password must contain at least one symbol';
  }
  return "";
}
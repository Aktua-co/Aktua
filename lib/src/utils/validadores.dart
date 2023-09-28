
//////VALIDADORES
  
  bool validateEmail(String email) {
  // Regular expression pattern for email validation
  final pattern = r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';
  final regExp = RegExp(pattern);
   if (!regExp.hasMatch(email)) {
    return false; // Invalid email format
  }
   return true; // Valid email format
}

///NUMERO TELEFONO
///

String? validateArgentinianPhoneNumber(String? value) {
  print("Validating: '$value'");  // Print the value being validated

  if (value == null || value.isEmpty) {
    return 'Por favor ingrese su numero de telefono';
  }

  // Regular expression to match Argentinian phone numbers
  final RegExp regex = RegExp(r'^\+\d{10,15}$');

  if (!regex.hasMatch(value)) {
    return 'Por favor ingrese un numero de telefono valido +56123654789';
  }
  return null;
}



////PASSWORD
///
bool validatePassword(String password) {
  if (password.length < 8) {
    return false;
  }

  // Check for at least 1 uppercase letter
  if (!password.contains(RegExp(r'[A-Z]'))) {
    return false;
  }

  // Check for at least 1 symbol
  if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    return false;
  }

  // Check for at least 1 number
  if (!password.contains(RegExp(r'[0-9]'))) {
    return false;
  }

  return true;
}
//RUT

  bool validateRut(String rut) {
  if (!RegExp(r'^[0-9]+-[0-9kK]{1}$').hasMatch(rut)) {
    return false;
  }

  var tmp = rut.split('-');
  var digv = tmp[1].toLowerCase();
  var rutNumbers = int.tryParse(tmp[0]);
  if (rutNumbers == null) {
    return false;
  }

  return calculateVerificationDigit(rutNumbers) == digv;
}

String calculateVerificationDigit(int rutNumbers) {
  int m = 0;
  int s = 1;
  
  while (rutNumbers > 0) {
    s = (s + rutNumbers % 10 * (9 - m++ % 6)) % 11;
    rutNumbers ~/= 10;
  }

  return (s > 0) ? (s - 1).toString() : 'k';
}
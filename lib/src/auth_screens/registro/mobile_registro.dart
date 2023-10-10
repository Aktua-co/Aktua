import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/auth_screens/registro/controller_registro.dart';
import 'package:aktua_amplify/src/utils/validadores.dart';
import 'package:get/get.dart';

class MobileRegistro extends StatefulWidget {
  const MobileRegistro({Key? key}) : super(key: key);

  @override
  _MobileRegistroState createState() => _MobileRegistroState();
}

class _MobileRegistroState extends State<MobileRegistro> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoPaternoController = TextEditingController();
  TextEditingController apellidoMaternoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController claveController = TextEditingController();
  TextEditingController confirmarClaveController = TextEditingController();
  TextEditingController confirmarCodigoController = TextEditingController();

  bool claveValida = false;
  bool obscureText = false;
  bool obscureText2 = false;
  bool clavesIguales = false;
  bool seEnvioCodigo = false;
  FocusNode claveFocusNode = FocusNode();

  bool isLoading = false;
  final _formKeyRegistro = GlobalKey<FormState>();
  final _formKeyCodigo = GlobalKey<FormState>();

  Future<void> registrarce() async {
    setState(() {
      isLoading = true;
    });
    print('Registrando');
    final registroResponse = await signUpUser(
        username: nombreController.text,
        familyName: apellidoPaternoController.text,
        password: claveController.text,
        email: emailController.text);
    print("registroResponse.code");
    print(registroResponse.code);
    print(registroResponse.message);

    if (registroResponse.code == "CodeSent") {
      setState(() {
        isLoading = false;
        seEnvioCodigo = true;
      });
    } else {
      setState(() {
        isLoading = false;
        seEnvioCodigo = false;
      });
    }

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(registroResponse.message!),
      duration: Duration(seconds: 8),
    ));
  }

  Future<void> confirmar() async {
    setState(() {
      isLoading = true;
    });
    print('Confirmar');
    final confirmacionResponse = await confirmUser(
        username: emailController.text,
        confirmationCode: confirmarCodigoController.text);
    print(confirmacionResponse);

    if (confirmacionResponse.code == "Success") {
      setState(() {
        isLoading = false;
        seEnvioCodigo = false;
      });
    } else {
      setState(() {
        isLoading = false;
      });
    }

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(confirmacionResponse.message!),
      duration: Duration(seconds: 8),
    ));
  }

  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    if (!seEnvioCodigo) {
      return Scaffold(
          body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/assets/images/bienvenida_1.png'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  const SizedBox(
                      width: 50,
                      child: Image(
                          image:
                              AssetImage('lib/assets/images/logo_aktua.png'))),
                  SizedBox(height: 20),
                  const Text(
                    'Registro',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Por favor ingresa tus datos ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Soy Vecino'),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Tengo un Negocio'),
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    flex: 5,
                    child: !isLoading
                        ? Form(
                            key: _formKeyRegistro,
                            child: Scrollbar(
                              controller: _scrollController,
                              thumbVisibility: true,
                              child: ListView(
                                controller: _scrollController,
                                physics: AlwaysScrollableScrollPhysics(),
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                //mainAxisSize: MainAxisSize.min,
                                children: [
                                  TextFormField(
                                    controller: nombreController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Nombre',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Ingrese su Nombre';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    controller: apellidoPaternoController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Apellido Paterno',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Ingrese su Apellido Paterno';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    controller: apellidoMaternoController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Apellido Materno',
                                    ),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Ingrese su Apellido Materno';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    //style:TextStyle(color:Color.fromARGB(255, 20, 20, 20)),
                                    controller: emailController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Ingrese su Email';
                                      }
                                      if (!validateEmail(value)) {
                                        return 'Email Invalido: "ejemplo@dominio.com"';
                                      }
                                      return null; // Return null if the value is valid
                                    },
                                    decoration: InputDecoration(
                                      hintText: 'Ingrese su Email',
                                      labelText: 'Email',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    textDirection: TextDirection.ltr,
                                    controller: claveController,
                                    onChanged: (value) {
                                      final isValid = validatePassword(value);
                                      setState(() {
                                        claveValida = isValid;
                                      });
                                    },
                                    decoration: InputDecoration(
                                        errorMaxLines: 2,
                                        hintStyle: TextStyle(
                                          color: Colors.amber,
                                        ),
                                        suffixIcon: IconButton(
                                          icon: Icon(obscureText
                                              ? Icons.visibility_off
                                              : Icons.visibility),
                                          onPressed: () {
                                            setState(() {
                                              obscureText = !obscureText;
                                            });
                                          },
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: BorderSide(),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: claveValida ||
                                                    claveController.text.isEmpty
                                                ? Colors.green
                                                : Colors.red,
                                          ),
                                        ),
                                        labelText: 'Contraseña',
                                        helperStyle: TextStyle(
                                          overflow: TextOverflow.clip,
                                        ),
                                        helperText: claveValida ||
                                                claveController.text.isEmpty
                                            ? ''
                                            : 'La contraseña debe tener al menos 8 caracteres, mayusculas, un numero y un simbolo'),
                                    obscureText: obscureText,
                                    onTap: () {
                                      setState(() {
                                        claveFocusNode.requestFocus();
                                      });
                                    },
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Debe ingresar una contraseña';
                                      }
                                      final isValid = validatePassword(value);
                                      if (!isValid) {
                                        return 'La contraseña debe tener al menos 8 caracteres, mayusculas, un numero y un simbolo';
                                      } else {
                                        setState(() {
                                          claveValida = true;
                                        });
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  TextFormField(
                                    enabled: claveValida ? true : false,
                                    controller: confirmarClaveController,
                                    onChanged: (value) {
                                      final isValid =
                                          confirmarClaveController.text ==
                                              claveController.text;
                                      print(confirmarClaveController.text);
                                      print(claveController.text);
                                      setState(() {
                                        clavesIguales = isValid;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: clavesIguales ||
                                                  confirmarClaveController
                                                      .text.isEmpty
                                              ? Colors.green
                                              : Colors.red,
                                        ),
                                      ),
                                      labelStyle: TextStyle(
                                          color: claveValida
                                              ? Colors.black
                                              : Colors.grey),
                                      labelText: 'Confirmar Contraseña',
                                      suffixIcon: IconButton(
                                        icon: Icon(obscureText2
                                            ? Icons.visibility_off
                                            : Icons.visibility),
                                        onPressed: () {
                                          setState(() {
                                            obscureText2 = !obscureText2;
                                          });
                                        },
                                      ),
                                    ),
                                    obscureText: obscureText2,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Debe ingresar la misma contraseña';
                                      }
                                      final isValid = claveController.text ==
                                          confirmarClaveController.text;
                                      if (!isValid) {
                                        return 'Las contraseñas deben coincidir';
                                      }
                                      return null;
                                    },
                                  ),
                                  SizedBox(height: 10),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (_formKeyRegistro.currentState!
                                          .validate()) {
                                        registrarce();
                                      }
                                    },
                                    child: Text('Registrarse'),
                                  ),
                                  SizedBox(height: 30),
                                  Expanded(
                                    flex:1,
                                    child: 
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                      Center(child: Text("¿Ya tienes una cuenta?"),),
                                      SizedBox(height: 10),
                                      ElevatedButton(
                                      onPressed: () {
                                    Get.toNamed('/login');
                                        },
                                        child: Text('Inicia sesión'),
                                      )

                                      ]),)
                                ],
                              ),
                            ))
                        : Center(
                            child: CircularProgressIndicator(),
                          ),
                  ),
                ]),
              ),
            ),
          ),
        ),
      ));
    } else {
      return Scaffold(
          body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'lib/assets/images/bienvenida_1.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Card(
              //color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Column(
                    children: [
                      SizedBox(
                          width: 80,
                          child: Image(
                              image: AssetImage(
                                  'lib/assets/images/logo_aktua.png'))),
                      SizedBox(height: 20),
                      Text(
                        'Registro',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Por favor ingresa tus datos ',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Expanded(
                    child: !isLoading
                        ? Form(
                            key: _formKeyCodigo,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      child: TextFormField(
                                        controller: confirmarCodigoController,
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Codigo de seguridad',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Ingrese el codigo de seguridad';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (_formKeyCodigo.currentState!
                                            .validate()) {
                                          print("__registrar__");
                                          confirmar();
                                        }
                                      },
                                      child: Text('Validar codigo'),
                                    ),
                                  ),
                                ]),
                          )
                        : Center(
                            child: CircularProgressIndicator(),
                          ),
                  )
                ]),
              ),
            ),
          ),
        ),
      ));
    }
  }
}

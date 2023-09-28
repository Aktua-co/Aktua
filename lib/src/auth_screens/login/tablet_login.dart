
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/utils/validadores.dart';
import 'package:aktua_amplify/src/auth_screens/login/controller_login.dart';
import 'package:aktua_amplify/src/feed/responsive_feed.dart';
import 'package:get/get.dart';


class TabletLogin extends StatefulWidget {
  const TabletLogin({ Key? key }) : super(key: key);

  @override
  _TabletLoginState createState() => _TabletLoginState();
}

class _TabletLoginState extends State<TabletLogin> {
    TextEditingController emailController = TextEditingController();
  TextEditingController claveController = TextEditingController();
  TextEditingController confirmarClaveController = TextEditingController();
 TextEditingController confirmarCodigoController = TextEditingController();

 bool claveValida = false;
  bool obscureText = false;
  bool obscureText2 = false;
  bool clavesIguales = false;
  bool customChallenge = false;
  bool isLoading = false;
  FocusNode claveFocusNode = FocusNode();

final _formKeyLogin = GlobalKey<FormState>();
final _formKeyCustomChallenge = GlobalKey<FormState>();

Future<void> login()async{
  setState(() {
    isLoading=true;
  });

  final loginResponse = await signInUser(emailController.text, claveController.text);
  print("loginResponse.code");
  print(loginResponse.code);
  print(loginResponse.message);

     if(loginResponse.code == "AuthSignInStep.confirmSignInWithCustomChallenge"){
        setState(() {
          isLoading = false;
          customChallenge = true;
        });
      }else if(loginResponse.code == "Success"){
        setState(() {
          isLoading = false;
          customChallenge = false;
        });
         Get.toNamed('/feed');
      }else{
         setState(() {
          isLoading = false;
          customChallenge = false;
        });
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(loginResponse.message!),
          duration: Duration(seconds: 8),
        )
      );
}

  @override
  Widget build(BuildContext context) {
     
     return Scaffold(
      body:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/bienvenida_1.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(children: [
                  Column(
                          children: [
                            SizedBox(
                          width: 80,
                          child: Image(
                          image: AssetImage('lib/assets/images/logo_aktua.png')
                          )),
                          SizedBox(height:20),
                          Text('Ingreso', style: TextStyle(color:Colors.grey, fontSize: 30, fontWeight: FontWeight.bold),),
                          Text('Por favor ingresa tus datos ', style: TextStyle( color:Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),),
                        ],
                        ),
                        SizedBox(height: 50,),
                        Expanded(child: 
                        isLoading?
                        Center(child: CircularProgressIndicator(),)
                        :
                        Form(
                          key: _formKeyLogin,
                          child: Column(
                            children: [
                              TextFormField(
                                          //style:TextStyle(color:Color.fromARGB(255, 20, 20, 20)),
                                          controller: emailController,
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
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
                                hintStyle:TextStyle(color:Colors.amber,),
                                suffixIcon: IconButton(
                                      icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
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
                                      color: claveValida || claveController.text.isEmpty? Colors.green : Colors.red,
                                    ),
                                  ),
                                  labelText: 'Contraseña',
                                  helperStyle: TextStyle(
                                    overflow: TextOverflow.clip,
                                    
                                  ),
                                  helperText: claveValida || claveController.text.isEmpty?'' : 'La contraseña debe tener al menos 8 caracteres, mayusculas, un numero y un simbolo'
                                ),
                                obscureText: obscureText,
                                  onTap: () {
                                  setState(() {
                                    claveFocusNode.requestFocus();
                                  });
                                },
                                validator: (value){
                                  if (value == null ||
                                    value.isEmpty) {
                                  return 'Debe ingresar una contraseña';
                                }
                                final isValid = validatePassword(value);
                                if (!isValid) {
                                  return 'La contraseña debe tener al menos 8 caracteres, mayusculas, un numero y un simbolo';
                                }else{
                                  setState(() {
                                    claveValida = true;
                                  });
                                }
                                return null;
                                },
                              ),
                              SizedBox(height: 10),
                                    ElevatedButton(
                                      onPressed: (){
                                          if (_formKeyLogin.currentState!.validate()) {
                                            login();
                                          }
                                      },
                                      child: Text('Ingresar'),
                                    ),
                            ],
                          ),
                        ),)
                ]),
              ),
            ),
          ),
        ),
      )
    );
 
  }
}
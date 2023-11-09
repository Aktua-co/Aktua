// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:aktua_amplify/src/utils/validadores.dart';
import 'package:faker/faker.dart';
import 'package:aktua_amplify/src/auth_screens/login/controller_login.dart';
import 'package:aktua_amplify/src/providers/user_provider.dart';
import 'package:provider/provider.dart';

class TabletPerfil extends StatefulWidget {
const TabletPerfil({ Key? key }) : super(key: key);

  @override
  State<TabletPerfil> createState() => _TabletPerfilState();
}

class _TabletPerfilState extends State<TabletPerfil> {
final int pageIndex = 2;

  TextEditingController nombreController = TextEditingController();

  TextEditingController apellidoPaternoController = TextEditingController();

  TextEditingController apellidoMaternoController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController numeroContactoController = TextEditingController();

  TextEditingController claveController = TextEditingController();

  TextEditingController confirmarClaveController = TextEditingController();

  TextEditingController confirmarCodigoController = TextEditingController();

  bool claveValida = false;

  bool obscureText = false;

  bool obscureText2 = false;

  bool clavesIguales = false;

  bool seEnvioCodigo = false;

  bool cambiarClave = false;

  FocusNode claveFocusNode = FocusNode();

  bool isLoading = false;

  final _formKeyUserData = GlobalKey<FormState>();
  late UserProvider userProvider ;

    @override
    void initState() {
      super.initState();
       print("((USER))");
       userProvider = Provider.of<UserProvider>(context, listen: false);
       userProvider.fetchUserAttributes().then((value) => {
        print(userProvider.userAttributes['email']),
        emailController.text = userProvider.userAttributes['email']!,
        nombreController.text = userProvider.userAttributes['name']!,
        apellidoPaternoController.text = userProvider.userAttributes['custom:apellido_paterno']!,

       });

    }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
              ),
              Card(
                elevation: 6,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Theme.of(context).primaryColor,width: 2),
                    ),
                    child: Form(
                        key: _formKeyUserData,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                               Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Dato personales", style: Theme.of(context).textTheme.titleLarge),
                              ),
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
                              SizedBox(height: 20),
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Contacto", style: Theme.of(context).textTheme.titleLarge),
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                  //readOnly: true,
                                  controller:numeroContactoController,
                                  validator: validateArgentinianPhoneNumber,
                                  decoration: InputDecoration(
                                  hintText: 'Ingrese su Numero de contacto',
                                  labelText: 'Telefono',
                                  border: OutlineInputBorder(),
                                ),
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
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Seguridad y Privacidad", style: Theme.of(context).textTheme.titleLarge),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Text("Contraseña de acceso", style: Theme.of(context).textTheme.bodyMedium),
                                SizedBox(width: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    setState(() {
                                      cambiarClave = !cambiarClave;
                                    });
                                  },
                                  child: Text("Cambiar Contraseña", style:Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white))),
        
                              ],),
                              cambiarClave?
                              Column(
                                children: [
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
                                        TextFormField(
                                          enabled:claveValida?true:false,
                                          controller: confirmarClaveController,
                                          onChanged: (value) {
                                             final isValid = confirmarClaveController.text == claveController.text;
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
                                                color: clavesIguales || confirmarClaveController.text.isEmpty? Colors.green : Colors.red,
                                              ),
                                            ),
                                            labelStyle: TextStyle(color: claveValida?Colors.black:Colors.grey),
                                            labelText: 'Confirmar Contraseña',
                                            suffixIcon: IconButton(
                                                icon: Icon(obscureText2 ? Icons.visibility_off : Icons.visibility),
                                                onPressed: () {
                                                  setState(() {
                                                    obscureText2 = !obscureText2;
                                                  });
                                                },
                                              ),
                                          ),
                                          obscureText: obscureText2,
                                          validator: (value){
                                            if (value == null ||
                                              value.isEmpty) {
                                            return 'Debe ingresar la misma contraseña';
                                          }
                                          final isValid = claveController.text == confirmarClaveController.text;
                                          if (!isValid) {
                                            return 'Las contraseñas deben coincidir';
                                          }
                                          return null;
                                          },
                                        ),
                                        SizedBox(height: 10),
                                ],
                              )
                              :
                              Container(),
                              SizedBox(height: 20),
                              ElevatedButton(
                                onPressed: () {
                                  if (_formKeyUserData.currentState!.validate()) {
                                    //registrarce();
                                  }
                                },
                                child: Text('Guardar cambios'),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
               ElevatedButton(onPressed: (){
                signOutCurrentUser();
            }, child: Text("Cerrar Sesión"))
            
            ],
          ),
        ),
      ),
      bottomNavigationBar: ButtomNavigationBar(pageIndex),
    );
  }

}
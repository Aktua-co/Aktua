import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/auth_screens/registro/controller_registro.dart';
import 'package:aktua_amplify/src/auth_screens/login/controller_login.dart';
import 'package:aktua_amplify/src/utils/validadores.dart';
import 'package:get/get.dart';
import 'package:aktua_amplify/src/utils/constants.dart';

class DesktopRegistro extends StatefulWidget {
  const DesktopRegistro({ Key? key }) : super(key: key);

  @override
  _DesktopRegistroState createState() => _DesktopRegistroState();
}

class _DesktopRegistroState extends State<DesktopRegistro> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController apellidoPaternoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController claveController = TextEditingController();
  TextEditingController confirmarClaveController = TextEditingController();
  TextEditingController confirmarCodigoController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController barrioController = TextEditingController();
  TextEditingController numeroContactoController = TextEditingController();
  

  bool claveValida = false;
  bool obscureText = false;
  bool obscureText2 = false;
  bool clavesIguales = false;
  bool seEnvioCodigo = false;
  String seleccion = "vecino";
  FocusNode claveFocusNode = FocusNode();
  
  bool isLoading = false;
  final _formKeyRegistro = GlobalKey<FormState>();
  final _formKeyCodigo = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    barrioController.text = barrios[0];
  }

  Future<void> registrarce() async {
    setState(() {
          isLoading = true;
        });
    print('Registrando');
    final registroResponse = await signUpUser(
      username: nombreController.text, 
      familyName: apellidoPaternoController.text,
      password: claveController.text, 
      email: emailController.text
      );
      print("registroResponse.code");
      print(registroResponse.code);
      print(registroResponse.message);

      if(registroResponse.code == "CodeSent"){
        setState(() {
          isLoading = false;
          seEnvioCodigo = true;
        });
      }else{
         setState(() {
          isLoading = false;
          seEnvioCodigo = false;
        });
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(registroResponse.message!),
          duration: const Duration(seconds: 8),
        )
      );
  }
//TODO: Agregar tipo de usiario al formulario
  Future<void> confirmar() async {
    setState(() {
          isLoading = true;
        });

    print('Confirmar');
    final confirmacionResponse = await confirmUser(
      username: emailController.text,
      confirmationCode: confirmarCodigoController.text
    );
    print(confirmacionResponse);

    if(confirmacionResponse.code == "Success"){
        setState(() {
          isLoading = false;
          seEnvioCodigo = false;
        });
        await signInUser(emailController.text, claveController.text).then((value) => {

          if (value.code == "Success") {
            setState(() {
              isLoading = false;
            }),
            guardarRegistroUsuarioONegocio()
            
          } else {
            setState(() {
              isLoading = false;
            })
          } 
        },);
         Get.toNamed('/Login');
      }else{
         setState(() {
          isLoading = false;
        });
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(confirmacionResponse.message!),
          duration: const Duration(seconds: 8),
        )
      );

  }

Future<void> guardarRegistroUsuarioONegocio()async{
  if(seleccion == "vecino"){
    print("__GUARDAR VECINO___");
    final nombreCompleto = nombreController.text + " " + apellidoPaternoController.text;
     await saveUser(
              nombreCompleto, 
              emailController.text, 
              barrioController.text,
              direccionController.text,
              numeroContactoController.text
              ).then((value) => {
              Get.toNamed('/vecinos')
            });
  }else{
     print("__GUARDAR negocio___");
    await saveNegocio(
              nombreController.text, 
              emailController.text, 
              barrioController.text,
              direccionController.text,
              numeroContactoController.text
              ).then((value) => {
              Get.toNamed('/vecinos')
            });
  }
}
  
  
  @override
  Widget build(BuildContext context) {
    if(!seEnvioCodigo){
      return Scaffold(
      body: Container(
           decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/bienvenida_1.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        child: Row(children: [
          Expanded(child: Container()),
          Expanded(child: Card(
              //color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  
                  children: [
                    const Column(
                      children: [
                        SizedBox(
                      width: 80,
                      child: Image(
                      image: AssetImage('lib/assets/images/logo_aktua.png')
                      )),
                      SizedBox(height:20),
                      Text('Registro', style: TextStyle(color:Colors.grey, fontSize: 30, fontWeight: FontWeight.bold),),
                      Text('Por favor ingresa tus datos ', style: TextStyle( color:Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                    ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>( seleccion == "vecino"? Theme.of(context).colorScheme.primary : Colors.grey)),
                            onPressed: (){
                              setState(() {
                                seleccion = "vecino";
                              });
                            }, 
                            child: const Text('Soy Vecino'),),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>( seleccion == "negocio"? Theme.of(context).colorScheme.primary : Colors.grey)),
                            
                            onPressed: (){
                              setState(() {
                                seleccion = "negocio";
                              });
                            }, 
                            child: const Text('Tengo un Negocio'),),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: 
                    !isLoading?
                    Form(
                      key: _formKeyRegistro,
                      child:  Scrollbar(
                        trackVisibility: true,
                        thumbVisibility: true,
                        child: ListView(
                          //crossAxisAlignment: CrossAxisAlignment.center,
                                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                             TextFormField(
                                        controller: nombreController,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: seleccion == 'vecino'? 'Nombre(s)':'Nombre del Negocio',
                                          
                                        ),
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty) {
                                            return 'Ingrese su(s) Nombre(s)';
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 10),
                                      seleccion == "vecino"?
                                      TextFormField(
                                        controller: apellidoPaternoController,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Apellido(s)',
                                        ),
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty) {
                                            return 'Ingrese su(s) Apellido(s)';
                                          }
                                          return null;
                                        },
                                      ):Container(),
                                      const SizedBox(height: 10),
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
                                        decoration: const InputDecoration(
                                          hintText: 'Ingrese su Email',
                                          labelText: 'Email',
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      TextFormField(
                                        controller: direccionController,
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Direccion',
                                        ),
                                        validator: (value) {
                                          if (value == null ||
                                              value.isEmpty) {
                                            return 'Ingrese su Direccion';
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 10),
                                      DropdownButtonFormField<String>(
                                        value: barrioController.text,
                                        decoration: InputDecoration(
                                          labelText: 'Barrio',
                                        ),
                                        onChanged: (value) {
                                          setState(() {
                                            barrioController.text = value!;
                                          });
                                        },
                                        items: barrios.map((barrio) {
                                          return DropdownMenuItem<String>(
                                            value: barrio,
                                            child: Text(barrio, style: Theme.of(context).textTheme.labelSmall,),
                                          );
                                        }).toList(),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Seleccione un Barrio';
                                          }
                                          return null;
                                        },
                                      ),
                                      const SizedBox(height: 10),
                                      TextFormField(
                                              //readOnly: true,
                                              controller:numeroContactoController,
                                              validator: validateArgentinianPhoneNumber,
                                              decoration: InputDecoration(
                                                labelText: 'Telefono',
                                              ),
                                      ),
                                      const SizedBox(height: 10),
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
                                        hintStyle:const TextStyle(color:Colors.amber,),
                                        suffixIcon: IconButton(
                                              icon: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
                                              onPressed: () {
                                                setState(() {
                                                  obscureText = !obscureText;
                                                });
                                              },
                                            ),
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide(),
                                          ),
                                           focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: claveValida || claveController.text.isEmpty? Colors.green : Colors.red,
                                            ),
                                          ),
                                          labelText: 'Contraseña',
                                          helperStyle: const TextStyle(
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
                                      const SizedBox(height: 10),
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
                                          border: const OutlineInputBorder(),
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
                                      const SizedBox(height: 10),
                                      ElevatedButton(
                                        onPressed: (){
                                          // obtenerBarrio("Calima");
                                            if (_formKeyRegistro.currentState!.validate()) {
                                              registrarce();
                                            }
                                        },
                                        child: const Text('Registrarse'),
                                      ),
                                      Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                    SizedBox(height: 50),
                                    const Center(child: Text("¿No tienes una cuenta?"),),
                                    const SizedBox(height: 10),
                                    OutlinedButton(
                                    onPressed: () {
                                        Get.toNamed('/login');
                                    },
                                    child: const Text('Inicia Session'),
                                  ),
                                  SizedBox(height: 50),
                      
                                  ])
                          ],
                        ),
                      )
                      )
                      :
                      const Center(child: CircularProgressIndicator(),)
                      ,
                    )
                ]),
              ),
            ),),
            Expanded(child: Container(),)
        ]),
      )
    );
    }else{
       return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/images/bienvenida_1.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical:80, horizontal:300),
            child: Card(
              //color: Colors.pink,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  
                  children: [
                        const Column(
                      children: [
                        SizedBox(
                      width: 80,
                      child: Image(
                      image: AssetImage('lib/assets/images/logo_aktua.png')
                      )),
                      SizedBox(height:20),
                      Text('Registro', style: TextStyle(color:Colors.grey, fontSize: 30, fontWeight: FontWeight.bold),),
                      Text('Por favor ingresa tus datos ', style: TextStyle( color:Colors.grey, fontSize: 20, fontWeight: FontWeight.bold),),
                    ],
                    ),
                  Expanded(
                    child: 
                    !isLoading?
                    Form(
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
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Codigo de seguridad',
                                  
                                ),
                                validator: (value) {
                                  if (value == null ||
                                      value.isEmpty) {
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
                              onPressed: (){
                                  if (_formKeyCodigo.currentState!.validate()) {
                                    print("__registrar__");
                                    confirmar();
                                  }
                              },
                              child: const Text('Validar codigo'),
                            ),
                          ),
                      ]),
                    )
                    :
                    const Center(child: CircularProgressIndicator(),)
                    ,
                    )
                ]),
              ),
            ),
          ),
        ),
      )
    );
    }
  }
}
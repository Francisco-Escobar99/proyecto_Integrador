// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'login_registerProvider.dart';
import 'login_resgisterCustomer.dart';

class LoginRegister extends StatefulWidget {
  @override
  _LoginRegisterState createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  final _formKey = GlobalKey<FormState>();
  String? selectedRole;
  bool isButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFFE5E5E5), // Fondo de color
        child: Form(
          key: _formKey,
          child: Stack(
            children: [
              const Positioned(
                left: 27,
                top: 86,
                child: Text(
                  'Te damos la bienvenida...',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Positioned(
                left: 45,
                top: 135,
                child: Text(
                  'Cuentanos, ¿Quién quieres ser?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                left: 27,
                top: 250, // Nueva posición vertical
                child: Container(
                  width: 321,
                  height: 51, // Nuevas dimensiones
                  child: DropdownButtonFormField<String>(
                    value: selectedRole,
                    itemHeight:
                        51, // Misma altura que el DropdownButtonFormField
                    items: [
                      DropdownMenuItem<String>(
                        value: 'cliente',
                        child: Text(
                          'Cliente',
                          style: TextStyle(
                            color: selectedRole == 'cliente'
                                ? const Color(0xFF3B3936)
                                : const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'proveedor',
                        child: Text(
                          'Proveedor',
                          style: TextStyle(
                            color: selectedRole == 'proveedor'
                                ? const Color(0xFF3B3936)
                                : const Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                    onChanged: (String? value) {
                      setState(() {
                        selectedRole = value;
                        isButtonEnabled = value != null;
                      });
                    },
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 40,
                    dropdownColor: const Color(
                        0xFF3B3936), // Color de fondo del cuadro desplegable
                    style: const TextStyle(
                      fontFamily: 'Istok Web',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(
                          0xFF3B3936), // Nuevo color del texto dentro del cuadro desplegable
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: 'Roles',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none, // Remove the border
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none, // Remove the border
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 22,
                top: 631,
                child: SizedBox(
                  height: 43,
                  width: 321,
                  child: ElevatedButton(
                    onPressed: isButtonEnabled
                        ? () {
                            if (_formKey.currentState!.validate()) {
                              if (selectedRole == 'cliente') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => RegisterCustomer(),
                                  ),
                                );
                              } else if (selectedRole == 'proveedor') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterProvider(),
                                  ),
                                );
                              }
                            }
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: isButtonEnabled
                          ? const Color(0xFF3B3936)
                          : Colors.transparent,
                    ),
                    child: const Text(
                      'Siguiente',
                      style: TextStyle(
                        fontFamily: 'Istok Web',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

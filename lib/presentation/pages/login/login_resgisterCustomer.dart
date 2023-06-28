import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../View_principal/view_service.dart';

class RegisterCustomer extends StatefulWidget {
  const RegisterCustomer({Key? key}) : super(key: key);

  @override
  _RegisterCustomerState createState() => _RegisterCustomerState();
}

class _RegisterCustomerState extends State<RegisterCustomer> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFFE5E5E5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 27, top: 86),
              child: Text(
                'Te damos la bienvenida...',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 45, top: 37),
              child: Text(
                'Cuéntanos de ti:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 40),
            TextFormField(
              autovalidateMode: AutovalidateMode.disabled,
              decoration: InputDecoration(
                hintText: 'Nombre',
                fillColor: HexColor('#FFFFFF'),
                filled: true,
                hintStyle: const TextStyle(
                  color: Color(0xFF3B3936),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#FFFFFF')),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#FFFFFF')),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              autovalidateMode: AutovalidateMode.disabled,
              decoration: InputDecoration(
                hintText: 'Correo electrónico',
                fillColor: HexColor('#FFFFFF'),
                filled: true,
                hintStyle: const TextStyle(
                  color: Color(0xFF3B3936),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#FFFFFF')),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#FFFFFF')),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              autovalidateMode: AutovalidateMode.disabled,
              decoration: InputDecoration(
                hintText: 'Dirección',
                fillColor: HexColor('#FFFFFF'),
                filled: true,
                hintStyle: const TextStyle(
                  color: Color(0xFF3B3936),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#FFFFFF')),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#FFFFFF')),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 88),
            TextFormField(
              obscureText: _obscureText, // Ocultar/ver contraseña
              autovalidateMode: AutovalidateMode.disabled,
              decoration: InputDecoration(
                hintText: 'Contraseña',
                fillColor: HexColor('#FFFFFF'),
                filled: true,
                hintStyle: const TextStyle(
                  color: Color(0xFF3B3936),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#FFFFFF')),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#FFFFFF')),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: _obscureText, // Ocultar/ver contraseña
              autovalidateMode: AutovalidateMode.disabled,
              decoration: InputDecoration(
                hintText: 'Repetir contraseña',
                fillColor: HexColor('#FFFFFF'),
                filled: true,
                hintStyle: const TextStyle(
                  color: Color(0xFF3B3936),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#FFFFFF')),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: HexColor('#FFFFFF')),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText =
                          !_obscureText; // Cambiar la visibilidad de la contraseña
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 55),
            ElevatedButton(
              onPressed: () {Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ViewMain()),
    );},
              style: ElevatedButton.styleFrom(
                primary: HexColor('#3B3936'),
                // Color de fondo del botón
                // ignore: deprecated_member_use
                onPrimary: Colors.white,
                // Color del texto del botón
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                minimumSize: const Size(360, 59),
                // Ancho y alto mínimos del botón
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    color: HexColor('#3B3936'),
                    // Color del borde del botón
                    width: 12,
                    // Ancho del borde del botón
                  ),
                ),
              ),
              child: const Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}

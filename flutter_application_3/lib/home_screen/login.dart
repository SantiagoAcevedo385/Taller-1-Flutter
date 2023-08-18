import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_screen/menu.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final user = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 235, 235, 235),
        child: Center(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 450, vertical: 100),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(width: 2.0, color: Colors.black)),
                  ),
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://scontent.feoh4-3.fna.fbcdn.net/v/t39.30808-6/306820144_3318868408397441_5053356820099414817_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHKILTUs1I-5g4FG8WnENr8MoTbNXQRUeAyhNs1dBFR4JGf8W5un3fnv0cFhVWifT_Pszn__vjGu_5SOrYH-yme&_nc_ohc=382tGEg1xC0AX9_9MBI&_nc_ht=scontent.feoh4-3.fna&oh=00_AfCXHcD3wbcy_T2l5HD6XPDrBF0diOBUVnMetPTUbH4_1g&oe=64E3D089', // Reemplaza con la ruta de tu imagen
                        height: 100, // Ajusta la altura según tu necesidad
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Login',
                        style: TextStyle(fontSize: 50, fontFamily: 'Raleway'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    controller: user,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextField(
                    controller: password,
                    obscureText: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FloatingActionButton.extended(
                  backgroundColor: Colors.indigo,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Menu()),
                    );
                  },
                  label: const Text('Ingresar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

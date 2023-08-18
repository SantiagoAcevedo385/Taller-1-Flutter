import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_screen/login.dart';
import 'package:flutter_application_3/home_screen/producto.dart';



class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menú"),
        backgroundColor: Colors.deepPurple,
      ),
      body:  Card(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.production_quantity_limits),
              title: const Text("Productos"),
              subtitle: const Text("Formulario para crear productos"),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Producto()),
                  );
              },
            ),
          ],
        ),
      )
    );
  }
}
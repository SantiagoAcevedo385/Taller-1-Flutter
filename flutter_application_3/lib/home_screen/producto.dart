import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_screen/menu.dart';

class Producto extends StatefulWidget {
  const Producto({super.key});

  @override
  State<Producto> createState() => _ProductoState();
}

class _ProductoState extends State<Producto> {
  final List<Map<String, dynamic>> _productos = [];

  String _selectedCategoria = 'Café finca Pueblo Rico';

  final List<String> _categorias = [
    'Café finca Pueblo Rico',
    'Café finca Santa Rosa',
    'Café finca Montebello',
  ];

  String _selectedInsumo = 'Café Oscuro';

  final List<String> _insumos = [
    'Café Oscuro',
    'Café Amargo',
    'Café Molido en grano',
  ];

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _stockMaxController = TextEditingController();
  final TextEditingController _stockMinController = TextEditingController();
  final TextEditingController _valorUController = TextEditingController();
  final TextEditingController _descripcionController = TextEditingController();

  bool _estado = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulario de Clientes'),
        backgroundColor: const Color.fromARGB(255, 147, 35, 35),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: _nombreController,
                decoration: const InputDecoration(labelText: 'Nombre'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa un nombre.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _stockMaxController,
                decoration: const InputDecoration(labelText: 'Stock Máximo'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa un stock máximo.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _stockMinController,
                decoration: const InputDecoration(labelText: 'Stock Minimo'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa un stock minimo.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _valorUController,
                decoration: const InputDecoration(labelText: 'Valor únitario'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa un valor únitario.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descripcionController,
                decoration: const InputDecoration(labelText: 'Descripción'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingresa una descripción.';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField<String>(
                value: _selectedCategoria,
                onChanged: (newValue) {
                  setState(() {
                    _selectedCategoria = newValue!;
                  });
                },
                items:
                    _categorias.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: const InputDecoration(labelText: 'Categoría'),
              ),
              DropdownButtonFormField<String>(
                value: _selectedInsumo,
                onChanged: (newValue) {
                  setState(() {
                    _selectedInsumo = newValue!;
                  });
                },
                items: _insumos.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: const InputDecoration(labelText: 'Insumo'),
              ),
              SwitchListTile(
                title: const Text('Estado'),
                value: _estado,
                onChanged: (value) {
                  setState(() {
                    _estado = value;
                  });
                },
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _guardarProducto();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Menu()),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 147, 35, 35),
                ),
                child: const Text('Guardar Producto'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _guardarProducto() {
    Map<String, dynamic> producto = {
      'nombre': _nombreController.text,
      'apellido': _stockMaxController.text,
      'email': _stockMinController.text,
      'telefono': _valorUController.text,
      'direccion': _descripcionController.text,
      'categoria': _selectedCategoria,
      'insumo': _selectedInsumo,
      'estado': _estado,
    };

    _productos.add(producto);

    _mostrarClientes();
  }

  void _mostrarClientes() {
    for (var producto in _productos) {
      print('NIT: ${producto['nit']}');
      print('Nombre: ${producto['nombre']}');
      print('Apellido: ${producto['apellido']}');
      print('Email: ${producto['email']}');
      print('Teléfono: ${producto['telefono']}');
      print('Dirección: ${producto['direccion']}');
      print('Categoría: ${producto['categoría']}');
      print('Insumo: ${producto['insumo']}');
      print('Estado: ${producto['estado'] ? 'Activo' : 'Inactivo'}');
      print('---');
    }
  }
}

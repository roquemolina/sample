import 'package:flutter/material.dart';
import 'package:auth0_flutter/auth0_flutter.dart';

import 'info.dart';

class UserWidget extends StatefulWidget {
  final UserProfile? user;

  const UserWidget({required this.user, final Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _UserWidgetState createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  final List<String> empresas = [
    'Empresa A',
    'Empresa B',
    'Empresa C',
    'Empresa D',
  ];

  String? selectedEmpresa;

  @override
  Widget build(BuildContext context) {
    final pictureUrl = widget.user?.pictureUrl;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (pictureUrl != null)
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: CircleAvatar(
              radius: 56,
              child: ClipOval(child: Image.network(pictureUrl.toString())),
            ),
          ),
        Form(
          child: Column(
            children: [
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(labelText: 'Empresa'),
                value: selectedEmpresa,
                onChanged: (newValue) {
                  setState(() {
                    selectedEmpresa = newValue;
                  });
                },
                items: empresas.map((empresa) {
                  return DropdownMenuItem<String>(
                    value: empresa,
                    child: Text(empresa),
                  );
                }).toList(),
              ),
              TextFormField(
                decoration:
                    const InputDecoration(labelText: 'Número de teléfono'),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa el número de teléfono';
                  }
                  return null;
                },
                onChanged: (value) {
                  // Guardar el valor del campo de texto
                  // Puedes usar el valor guardado para otros fines
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Dirección'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa la dirección';
                  }
                  return null;
                },
                onChanged: (value) {
                  // Guardar el valor del campo de texto
                  // Puedes usar el valor guardado para otros fines
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Licencia'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingresa la Licencia';
                  }
                  return null;
                },
                onChanged: (value) {
                  // Guardar el valor del campo de texto
                  // Puedes usar el valor guardado para otros fines
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (Form.of(context).validate()) {
                    // Lógica adicional al presionar el botón "Enviar"
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Enviar'),
              ),
            ],
          ),
        ),
                    ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Info(
                          )));
                },
                child: const Text('Nueva Vista roque'))
      ],
    );
  }
}

class UserEntryWidget extends StatelessWidget {
  final String propertyName;
  final String? propertyValue;

  const UserEntryWidget({
    required this.propertyName,
    required this.propertyValue,
    final Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(propertyName),
          Text(propertyValue ?? ''),
        ],
      ),
    );
  }
}

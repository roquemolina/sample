import 'package:flutter/material.dart';
import 'package:auth0_flutter/auth0_flutter.dart';
import 'package:sample/detail_screen.dart';

import 'DriverForm.dart';
//import 'dart:convert';
//import 'package:http/http.dart' as http;

class UserWidget extends StatelessWidget {
  final UserProfile? user;

  const UserWidget({required this.user, final Key? key}) : super(key: key);

/*   void postBack() async {
    final username = user?.name;
    final email = user?.email;

    // Realizar la solicitud HTTP POST al backend
    final response = await http.post(
      Uri.parse('http://localhost:3024/auth/register'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': username,
        'email': email,
      }),
    );

    if (response.statusCode == 200) {
      print('Se agregaron exitosamente');
    } else {
      print('No se pudo agregar los datos');
    }
  } */

  @override
  Widget build(BuildContext context) {
//    postBack();
    /* final pictureUrl = user?.pictureUrl;
    // id, name, email, email verified, updated_at
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (pictureUrl != null)
        Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: CircleAvatar(
              radius: 56,
              child: ClipOval(child: Image.network(pictureUrl.toString())),
            )),
      Card(
          child: Column(children: [
        UserEntryWidget(propertyName: 'Id', propertyValue: user?.sub),
        UserEntryWidget(propertyName: 'Name', propertyValue: user?.name),
        UserEntryWidget(propertyName: 'Email', propertyValue: user?.email),
        UserEntryWidget(
            propertyName: 'Email Verified?',
            propertyValue: user?.isEmailVerified.toString()),
        UserEntryWidget(
            propertyName: 'Updated at',
            propertyValue: user?.updatedAt?.toIso8601String()),
      ])),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DetailScreen()));
          },
          child: const Text('Probando Detail')),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const DriverForm()));
          },
          child: const Text('Probando Detail'))
    ]);
  }
}

class UserEntryWidget extends StatelessWidget {
  final String propertyName;
  final String? propertyValue;

  const UserEntryWidget(
      {required this.propertyName, required this.propertyValue, final Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(propertyName), Text(propertyValue ?? '')],
        ));
  }
*/

return const Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    DriverForm()
  ]
);
}
}
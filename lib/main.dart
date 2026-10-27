import 'package:flutter/material.dart';

void main() => runApp(const ProfileCardApp());

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(title: 'Profile Card', debugShowCheckedModeBanner: false, home: Scaffold(backgroundColor: const Color(0xFFF1F5F9), appBar: AppBar(title: const Text('My Profile'), centerTitle: true), body: Center(child: Card(child: Padding(padding: const EdgeInsets.all(24), child: Column(mainAxisSize: MainAxisSize.min, children: const [CircleAvatar(radius: 42, child: Text('KV')), SizedBox(height: 16), Text('Kavya V.'), Text('Flutter Developer'), ListTile(leading: Icon(Icons.email_outlined), title: Text('Email'), subtitle: Text('kavya@example.com')), ListTile(leading: Icon(Icons.phone_outlined), title: Text('Phone'), subtitle: Text('+1 555 010 2030')), ListTile(leading: Icon(Icons.location_on_outlined), title: Text('City'), subtitle: Text('Chennai, India'))])))));
                                                    }

import 'package:flutter/material.dart';

void main() => runApp(const ProfileCardApp());

class ProfileCardApp extends StatelessWidget {
  const ProfileCardApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Profile Card',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2563EB)),
          useMaterial3: true,
        ),
        home: const ProfileScreen(),
      );
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color(0xFFF1F5F9),
        appBar: AppBar(title: const Text('My Profile'), centerTitle: true),
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 360),
              child: Card(
                elevation: 3,
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const CircleAvatar(
                        radius: 42,
                        backgroundColor: Color(0xFFDBEAFE),
                        child: Text('KV', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF1D4ED8))),
                      ),
                      const SizedBox(height: 16),
                      Text('Kavya V.', style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text('Flutter Developer', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.blueGrey)),
                      const SizedBox(height: 22),
                      const Divider(),
                      const ContactRow(icon: Icons.email_outlined, label: 'Email', value: 'kavya@example.com'),
                      const ContactRow(icon: Icons.phone_outlined, label: 'Phone', value: '+1 555 010 2030'),
                      const ContactRow(icon: Icons.location_on_outlined, label: 'City', value: 'Chennai, India'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}

class ContactRow extends StatelessWidget {
  const ContactRow({super.key, required this.icon, required this.label, required this.value});

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 12),
            Text('$label  ', style: const TextStyle(fontWeight: FontWeight.w600)),
            Expanded(child: Text(value, textAlign: TextAlign.end, overflow: TextOverflow.ellipsis)),
          ],
        ),
      );
}

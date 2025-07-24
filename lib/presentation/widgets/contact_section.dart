import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final accent = Colors.deepOrangeAccent;
    return Container(
      width: double.infinity,
      color: const Color(0xFF181A20),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Contact',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  )),
          const SizedBox(height: 18),
          const Text(
            "Let's connect! Feel free to reach out for collaboration, freelance, or just to say hi.",
            style: TextStyle(fontSize: 18, color: Colors.white70),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _ContactChip(
                icon: Icons.email,
                label: 'vibhashgyanminz23@gmail.com',
                onTap: () => launchUrl(Uri.parse('mailto:vibhashgyanminz23@gmail.com')),
                accent: accent,
              ),
              _ContactChip(
                icon: Icons.phone,
                label: '7008685131',
                onTap: () => launchUrl(Uri.parse('tel:7008685131')),
                accent: accent,
              ),
              _ContactChip(
                icon: Icons.link,
                label: 'LinkedIn',
                onTap: () => launchUrl(Uri.parse('https://www.linkedin.com/in/vibhash-minz/')),
                accent: accent,
              ),
            ],
          ),
          const SizedBox(height: 36),
          _ContactForm(accent: accent),
        ],
      ),
    );
  }
}

class _ContactChip extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color accent;
  const _ContactChip({required this.icon, required this.label, required this.onTap, required this.accent});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(32),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
        decoration: ShapeDecoration(
          color: const Color(0xFF23242B),
          shape: StadiumBorder(),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: accent, size: 22),
            const SizedBox(width: 10),
            Text(label, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

class _ContactForm extends StatefulWidget {
  final Color accent;
  const _ContactForm({required this.accent});

  @override
  State<_ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<_ContactForm> {
  final _formKey = GlobalKey<FormState>();
  String? _name, _email, _message;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFF23242B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: _inputDecoration('Name'),
              validator: (v) => v == null || v.isEmpty ? 'Enter your name' : null,
              onSaved: (v) => _name = v,
            ),
            const SizedBox(height: 16),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: _inputDecoration('Email'),
              validator: (v) => v == null || !v.contains('@') ? 'Enter a valid email' : null,
              onSaved: (v) => _email = v,
            ),
            const SizedBox(height: 16),
            TextFormField(
              style: const TextStyle(color: Colors.white),
              decoration: _inputDecoration('Message'),
              maxLines: 4,
              validator: (v) => v == null || v.isEmpty ? 'Enter a message' : null,
              onSaved: (v) => _message = v,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.accent,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                textStyle: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  final mailto = Uri(
                      scheme: 'mailto',
                      path: 'vibhashgyanminz23@gmail.com',
                      query:
                          'subject=Portfolio Contact from \\${Uri.encodeComponent(_name ?? "")} \\u0026body=Name: \\${Uri.encodeComponent(_name ?? "")}\\nEmail: \\${Uri.encodeComponent(_email ?? "")}\\n\\nMessage: \\${Uri.encodeComponent(_message ?? "")}');
                  if (await canLaunchUrl(mailto)) {
                    await launchUrl(mailto);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Could not open email client.')));
                  }
                }
              },
              child: const Text('Send Message'),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _inputDecoration(String label) => InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white70),
        filled: true,
        fillColor: const Color(0xFF181A20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: widget.accent, width: 2),
        ),
      );
}

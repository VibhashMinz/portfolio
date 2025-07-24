import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});
  @override
  Widget build(BuildContext context) {
    final accent = Colors.deepOrangeAccent;
    return Container(
      width: double.infinity,
      color: const Color(0xFF181A20),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left: Texts and Button
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Vibhash\nGyan Minz',
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 48,
                        height: 1.1,
                      ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Senior Flutter Developer', //\nCross-Platform Apps
                  style: TextStyle(
                    color: accent,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 32),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: accent,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    elevation: 0,
                  ),
                  onPressed: () async {
                    final resumeUrl = kIsWeb ? '/assets/resume/VibhashGyanMinzResume_cg.pdf' : null;
                    if (kIsWeb) {
                      final uri = Uri.parse(resumeUrl!);
                      if (await canLaunchUrl(uri)) {
                        await launchUrl(uri, webOnlyWindowName: '_blank');
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Resume opened in new tab!')),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Could not open resume.')),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Resume download is only supported on web.')),
                      );
                    }
                  },
                  child: const Text('Download Resume'),
                ),
              ],
            ),
          ),
          // Right: Profile Image
          Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: accent, width: 4),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    width: 260,
                    height: 320,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

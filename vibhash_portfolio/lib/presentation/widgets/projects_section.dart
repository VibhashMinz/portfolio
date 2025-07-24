import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final projects = [
      {
        'name': 'Rife Technology App',
        'url': 'https://play.google.com/store/apps/details?id=com.realrifetechnology.rife_mobile&hl=en_IN',
      },
      {
        'name': 'Ath Hub - Sports Network',
        'url': 'https://apps.apple.com/in/app/athhub-sports-network/id6737183741',
      },
      {
        'name': 'Quorit Wound Care - Doctor',
        'url': 'https://apps.apple.com/us/app/quorit-wound-care-doctor/id6502910398',
      },
      {
        'name': 'Prestige EmployeeConnect',
        'url': 'https://apps.apple.com/us/app/prestigego/id1496533589',
      },
      {
        'name': 'ScoreChamp',
        'url': 'https://apps.apple.com/in/app/scorechamp/id6463075908',
      },
      {
        'name': 'Windmills Craftwork',
        'url': 'https://apps.apple.com/us/app/windmills-craftworks/id1643182655',
      },
      {
        'name': 'Prestige Konnect',
        'url': 'https://apps.apple.com/us/app/prestige-konnect/id1625702123',
      },
      {
        'name': 'ZillSkill',
        'url': 'https://play.google.com/store/apps/details?id=com.zillskill',
      },
      {
        'name': 'VenueMonk Website',
        'url': 'https://www.venuemonk.com/',
      },
    ];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16),
          ...projects.map((p) => Card(
                elevation: 1,
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  title: Text(p['name']!),
                  trailing: IconButton(
                    icon: const Icon(Icons.open_in_new, color: Colors.blue),
                    onPressed: () => _launchUrl(p['url']!),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

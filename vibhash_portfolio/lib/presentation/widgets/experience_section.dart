import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final accent = Colors.deepOrangeAccent;
    final experiences = [
      {
        'role': 'Senior Software Engineer-Flutter Developer',
        'company': 'RAMP Investments LLC',
        'logo': 'https://img.icons8.com/ios-filled/50/company.png',
        'date': '01/2025 - 05/2025',
        'location': 'Remote',
        'bullets': [
          'Led the development of high-performance cross-platform apps using Flutter and Dart, increasing responsiveness and improving overall maintainability',
          'Applied Riverpod, RxDart, and BLoC for efficient asynchronous state management, adopting Clean Architecture to improve code modularity, testability, and scalability',
          'Integrated Firebase modules—Authentication, Firestore, Crashlytics, and more—to streamline backend operations and reduce crash rates by 35%',
          'Developed a custom Flutter package using platform channels to access native functionality, boosting app capabilities and performance',
          'Implemented Hive for secure local data caching, supporting offline functionality and enhancing data security and integrity',
          'Built CI/CD pipelines with CodeMagic, improving deployment efficiency by 40%',
          'Mentored junior team members, conducted regular code reviews, and contributed to best practices in Agile development',
        ],
        'projects': [
          {
            'name': 'Rife Technology App',
            'url': 'https://play.google.com/store/apps/details?id=com.realrifetechnology.rife_mobile&hl=en_IN',
            'icon': 'https://realrifetechnology.com/cdn/shop/files/PHOTO-2024-03-04-10-19-54.png?v=1709527992&width=420', // Replace with actual icon URL from Play Store
          },
        ],
      },
      {
        'role': 'Senior Flutter Developer',
        'company': 'Ant Creatives OPC Pvt. Ltd',
        'logo': 'https://img.icons8.com/color/48/company.png',
        'date': '02/2021 - 01/2025',
        'location': 'Noida, India',
        'bullets': [
          'Developed scalable mobile applications using Flutter, leveraging its flexibility to deliver production-level quality',
          'Applied RxDart, Riverpod, and BLoC for handling reactive programming and maintaining a clean, organized state flow throughout the app lifecycle',
          'Integrated RESTful and Firebase APIs to enable seamless client-server communication, efficiently handling JSON data for real-time updates and dynamic UI rendering in Flutter apps',
          'Integrated Hive for caching and SQLite for structured offline data storage, ensuring reliable user experience in low-connectivity environments',
          'Successfully deployed multiple apps to the Google Play Store and Apple App Store, ensuring compliance with platform guidelines and seamless user experience across Android and iOS',
          'Followed Agile (Scrum) methodology, participated in sprints, reviews, and daily stand-ups to ensure on-time delivery',
          'Led peer code reviews and provided hands-on mentorship to new Flutter team members',
        ],
        'projects': [
          {
            'name': 'Ath Hub - Sports Network',
            'url': 'https://apps.apple.com/in/app/athhub-sports-network/id6737183741',
            'icon': 'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/a5/46/c7/a546c76a-8e5f-e576-a4d8-3fb0340e0859/AppIcon-0-0-1x_U007emarketing-0-7-0-85-220.png/460x0w.webp'
          },
          {
            'name': 'Quorit Wound Care - Doctor',
            'url': 'https://play.google.com/store/apps/details?id=in.docuses.quoritapp&hl=en_IN',
            'icon': 'https://play-lh.googleusercontent.com/OPrDaRdC5TmSaGq2xOm6ZJ-nBdro6lSJThVzLvudIkPnmEh8RxM3ivJShI88ZO1Fn_0=w480-h960-rw'
          },
          {
            'name': 'Prestige EmployeeConnect',
            'url': 'https://apps.apple.com/us/app/prestigego/id1496533589',
            'icon': 'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/29/ea/98/29ea98e2-e6ef-c9a5-0b8c-0812d89ee18b/AppIcon-0-0-1x_U007epad-0-1-85-220.png/460x0w.webp'
          },
          {
            'name': 'ScoreChamp',
            'url': 'https://apps.apple.com/in/app/scorechamp/id6463075908',
            'icon': 'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/c9/22/d5/c922d58e-d662-dc14-982e-b681fcaf8f11/AppIcon-0-0-1x_U007emarketing-0-7-0-0-85-220.png/460x0w.webp'
          },
          {
            'name': 'Windmills Craftwork',
            'url': 'https://apps.apple.com/us/app/windmills-craftworks/id1643182655',
            'icon': 'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/8d/70/01/8d700106-699f-0fc2-82bb-c9ebb2298deb/AppIcon-0-0-1x_U007emarketing-0-11-0-85-220.png/460x0w.webp'
          },
          {
            'name': 'Prestige Konnect',
            'url': 'https://apps.apple.com/in/app/prestige-konnect/id1625702123',
            'icon': 'https://is1-ssl.mzstatic.com/image/thumb/Purple211/v4/d7/31/0e/d7310ebc-71b9-48ab-3b9a-09b76ea1cb25/AppIcon-0-0-1x_U007emarketing-0-7-0-85-220.png/460x0w.webp'
          },
          {
            'name': 'ZillSkill',
            'url': 'https://play.google.com/store/apps/details?id=com.zillskill',
            'icon': 'https://images.sftcdn.net/images/t_app-icon-m/p/e794776a-03f3-4b01-adaa-a1042b759690/37644442/zillskill-teens-talent-app-logo'
          },
        ],
      },
      {
        'role': 'Freelance - Frontend Developer',
        'company': 'VenueMonk',
        'logo': 'https://img.icons8.com/color/48/company.png',
        'date': '11/2020 - 02/2021',
        'location': 'Gurugram, India',
        'bullets': [
          'Developed and maintained ReactJS-based frontend components, improving UI consistency and load times',
          'Created Flutter-based mobile apps, ensuring a smooth and responsive user experience',
          'Integrated and optimized REST APIs, enhancing data retrieval speed and performance',
          'Collaborated with designers and backend teams to develop interactive and engaging interfaces',
        ],
        'projects': [
          {
            'name': 'VenueMonk Website',
            'url': 'https://www.venuemonk.com/',
            'icon': 'https://www.venuemonk.com/favicon.ico',
          },
        ],
      },
      {
        'role': 'Intern - Front-End Development',
        'company': 'AppStone Pvt. Ltd',
        'logo': 'https://img.icons8.com/color/48/company.png',
        'date': '05/2019 - 07/2019',
        'location': 'Bhubaneswar, India',
        'bullets': [
          'Improved project delivery by assisting senior developers with 2 ReactJS app build',
          'Reduced integration time by 15% through enhancing ReactJS development and REST API integration skills',
        ],
        'projects': [],
      },
    ];
    return Container(
      width: double.infinity,
      color: const Color(0xFF181A20),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Experience',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  )),
          const SizedBox(height: 24),
          LayoutBuilder(
            builder: (context, constraints) {
              final crossAxisCount = constraints.maxWidth > 1200
                  ? 3
                  : constraints.maxWidth > 800
                      ? 2
                      : 1;
              return MasonryGridView.count(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 32,
                crossAxisSpacing: 32,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return _ExperienceCard(exp: experiences[index], accent: accent);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _ExperienceCard extends StatelessWidget {
  final Map exp;
  final Color accent;
  const _ExperienceCard({required this.exp, required this.accent});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: const Color(0xFF23242B),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  exp['logo'] as String,
                  width: 44,
                  height: 44,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.business, size: 44, color: Colors.white),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${exp['role']}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                    const SizedBox(height: 2),
                    Text('${exp['company']}', style: TextStyle(color: accent, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 2),
                    Text('${exp['date']} • ${exp['location']}', style: const TextStyle(color: Colors.white70, fontSize: 14)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 18),
          ...List<Widget>.from((exp['bullets'] as List<String>).map((b) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('• ', style: TextStyle(fontSize: 18, color: accent)),
                    Expanded(child: Text(b, style: const TextStyle(color: Colors.white))),
                  ],
                ),
              ))),
          if ((exp['projects'] as List).isNotEmpty) ...[
            const SizedBox(height: 16),
            Text('Projects:', style: TextStyle(color: accent, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Wrap(
              spacing: 16,
              runSpacing: 12,
              children: (exp['projects'] as List).map<Widget>((p) => _ProjectCard(project: p, accent: accent)).toList(),
            ),
          ],
        ],
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final Map project;
  final Color accent;
  const _ProjectCard({required this.project, required this.accent});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () async {
        final url = Uri.parse(project['url'] as String);
        if (await canLaunchUrl(url)) {
          await launchUrl(url, mode: LaunchMode.externalApplication);
        }
      },
      child: Container(
        width: 120,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
          color: accent.withOpacity(0.09),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                project['icon'] as String,
                width: 36,
                height: 36,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Icon(Icons.apps, size: 36, color: accent),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              project['name'] as String,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: accent),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Icon(Icons.open_in_new, size: 16, color: accent.withOpacity(0.7)),
          ],
        ),
      ),
    );
  }
}

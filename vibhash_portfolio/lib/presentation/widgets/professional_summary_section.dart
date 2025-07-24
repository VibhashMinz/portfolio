import 'package:flutter/material.dart';

class ProfessionalSummarySection extends StatelessWidget {
  const ProfessionalSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      {'name': 'Flutter', 'icon': 'https://img.icons8.com/color/48/flutter.png'},
      {'name': 'Dart', 'icon': 'https://img.icons8.com/color/48/dart.png'},
      {'name': 'React JS', 'icon': 'https://img.icons8.com/color/48/react-native.png'},
      {'name': 'JavaScript', 'icon': 'https://img.icons8.com/color/48/javascript.png'},
      {'name': 'RxDart', 'icon': 'https://raw.githubusercontent.com/ReactiveX/rxdart/refs/heads/master/packages/rxdart/screenshots/logo.png'},
      {'name': 'Riverpod', 'icon': 'https://avatars.githubusercontent.com/u/60146310?s=200&v=4'},
      {'name': 'Bloc', 'icon': 'https://pub.dev/packages/flutter_bloc/versions/9.1.1/gen-res/gen/190x190/logo.webp'},
      {'name': 'Clean Architecture', 'icon': 'https://img.icons8.com/ios-filled/50/architecture.png'},
      {'name': 'Firebase', 'icon': 'https://img.icons8.com/color/48/firebase.png'},
      {'name': 'REST API', 'icon': 'https://img.icons8.com/ios-filled/50/api-settings.png'},
      {'name': 'Hive', 'icon': 'https://img.icons8.com/color/48/hive.png'},
      {'name': 'SQLite', 'icon': 'https://img.icons8.com/color/48/sql.png'},
      {'name': 'CodeMagic', 'icon': 'https://avatars.githubusercontent.com/u/45143977?s=200&v=4'},
      {'name': 'Git', 'icon': 'https://img.icons8.com/color/48/git.png'},
      {'name': 'GitHub Action', 'icon': 'https://img.icons8.com/ios-filled/50/github.png'},
      {'name': 'GitLab', 'icon': 'https://img.icons8.com/color/48/gitlab.png'},
      {'name': 'Agile', 'icon': 'https://img.icons8.com/color/48/agile.png'},
      {'name': 'TDD', 'icon': 'https://img.icons8.com/ios-filled/50/test-passed.png'},
      {'name': 'Unit Testing', 'icon': 'https://img.icons8.com/ios-filled/50/test-passed.png'},
      {'name': 'Widget Testing', 'icon': 'https://img.icons8.com/ios-filled/50/test-passed.png'},
      {'name': 'Firebase Test Lab', 'icon': 'https://img.icons8.com/color/48/firebase.png'},
      {'name': 'PubNub', 'icon': 'https://avatars.githubusercontent.com/u/2360756?s=200&v=4'},
      {'name': 'Development Methodologies', 'icon': null},
    ];
    return Container(
      width: double.infinity,
      color: const Color(0xFF181A20),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('About Me',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  )),
          const SizedBox(height: 18),
          const Text(
            'Results-driven Flutter Developer with 4+ years of experience delivering high-quality, scalable mobile applications for Android and iOS. Proficient in Flutter and Dart with deep expertise in Clean Architecture, modular design, and state management. Skilled in integrating RESTful APIs and Firebase services, building CI/CD pipelines, and implementing robust version control. Experienced in Agile environments with a strong commitment to test-driven development and user-centric design.',
            style: TextStyle(fontSize: 18, height: 1.5, color: Colors.white),
          ),
          const SizedBox(height: 24),
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: skills
                .map((s) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 13),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF23242B),
                        shape: StadiumBorder(),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (s['icon'] != null)
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Image.network(
                                s['icon'] as String,
                                width: 22,
                                height: 22,
                                fit: BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) => const SizedBox.shrink(),
                              ),
                            ),
                          Text(
                            s['name'] ?? s.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              letterSpacing: 0.1,
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

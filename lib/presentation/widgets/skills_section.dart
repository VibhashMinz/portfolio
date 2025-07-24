import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final accent = Theme.of(context).colorScheme.primary;
    final skills = [
      {
        'category': 'Programming & Frameworks',
        'items': [
          {
            'name': 'Flutter',
            'icon': 'https://img.icons8.com/color/48/flutter.png',
          },
          {
            'name': 'Dart',
            'icon': 'https://img.icons8.com/color/48/dart.png',
          },
          {
            'name': 'React JS',
            'icon': 'https://img.icons8.com/color/48/react-native.png',
          },
          {
            'name': 'JavaScript',
            'icon': 'https://img.icons8.com/color/48/javascript.png',
          },
        ],
      },
      {
        'category': 'State Management & Architecture',
        'items': [
          {
            'name': 'RxDart',
            'icon': 'https://raw.githubusercontent.com/ReactiveX/rxdart/refs/heads/master/packages/rxdart/screenshots/logo.png', // fallback icon
          },
          {
            'name': 'Riverpod',
            'icon': 'https://avatars.githubusercontent.com/u/60146310?s=200&v=4', // github avatar
          },
          {'name': 'Bloc', 'icon': 'https://pub.dev/packages/flutter_bloc/versions/9.1.1/gen-res/gen/190x190/logo.webp'},
          {
            'name': 'Clean Architecture',
            'icon': 'https://img.icons8.com/ios-filled/50/architecture.png',
          },
        ],
      },
      {
        'category': 'Local Storage',
        'items': [
          {
            'name': 'Hive',
            'icon': 'https://raw.githubusercontent.com/hivedb/hive/master/docs/images/logo.png',
          },
          {
            'name': 'SQLite',
            'icon': 'https://img.icons8.com/color/48/sqlite.png',
          },
          {
            'name': 'Shared Preferences',
            'icon': 'https://img.icons8.com/ios-filled/50/settings.png',
          },
        ],
      },
      {
        'category': 'Backend Integration & APIs',
        'items': [
          {
            'name': 'RESTful APIs',
            'icon': 'https://img.icons8.com/ios-filled/50/api-settings.png',
          },
          {
            'name': 'JSON',
            'icon': 'https://img.icons8.com/color/48/json--v1.png',
          },
          {
            'name': 'Google APIs',
            'icon': 'https://img.icons8.com/color/48/google-logo.png',
          },
          {
            'name': 'Firebase SDKs',
            'icon': 'https://img.icons8.com/color/48/firebase.png',
          },
          {
            'name': 'Authentication',
            'icon': 'https://img.icons8.com/ios-filled/50/lock-2.png',
          },
          {
            'name': 'Firestore',
            'icon': 'https://img.icons8.com/color/48/google-firebase-console.png',
          },
          {
            'name': 'Push Notifications',
            'icon': 'https://img.icons8.com/ios-filled/50/appointment-reminders--v1.png',
          },
          {
            'name': 'Remote Config',
            'icon': 'https://img.icons8.com/ios-filled/50/settings.png',
          },
          {
            'name': 'Crashlytics',
            'icon': 'https://img.icons8.com/ios-filled/50/error--v1.png',
          },
          {
            'name': 'Sentry',
            'icon': 'https://avatars.githubusercontent.com/u/1396951?s=200&v=4',
          },
          {
            'name': 'PubNub',
            'icon': 'https://avatars.githubusercontent.com/u/2360756?s=200&v=4',
          },
        ],
      },
      {
        'category': 'CI/CD & Version Control',
        'items': [
          {
            'name': 'CodeMagic',
            'icon': 'https://avatars.githubusercontent.com/u/45143977?s=200&v=4',
          },
          {
            'name': 'Git',
            'icon': 'https://img.icons8.com/color/48/git.png',
          },
          {
            'name': 'GitHub Action',
            'icon': 'https://img.icons8.com/ios-filled/50/github.png',
          },
          {
            'name': 'GitLab',
            'icon': 'https://img.icons8.com/color/48/gitlab.png',
          },
        ],
      },
      {
        'category': 'Development Methodologies',
        'items': [
          {
            'name': 'Agile',
            'icon': 'https://img.icons8.com/color/48/agile.png',
          },
          {
            'name': 'TDD',
            'icon': 'https://img.icons8.com/ios-filled/50/test-passed.png',
          },
        ],
      },
      {
        'category': 'Testing & Debugging',
        'items': [
          {
            'name': 'Unit Testing',
            'icon': 'https://img.icons8.com/ios-filled/50/test-passed.png',
          },
          {
            'name': 'Widget Testing',
            'icon': 'https://img.icons8.com/ios-filled/50/test-passed.png',
          },
          {
            'name': 'Firebase Test Lab',
            'icon': 'https://img.icons8.com/color/48/firebase.png',
          },
        ],
      },
      {
        'category': 'Tools',
        'items': [
          {
            'name': 'Xcode',
            'icon': 'https://img.icons8.com/color/48/xcode.png',
          },
          {
            'name': 'Android Studio',
            'icon': 'https://img.icons8.com/color/48/android-studio--v2.png',
          },
          {
            'name': 'Postman',
            'icon': 'https://img.icons8.com/external-tal-revivo-color-tal-revivo/48/external-postman-is-the-only-complete-api-development-environment-logo-color-tal-revivo.png',
          },
          {
            'name': 'Figma',
            'icon': 'https://img.icons8.com/color/48/figma--v1.png',
          },
          {
            'name': 'Jira',
            'icon': 'https://img.icons8.com/color/48/jira.png',
          },
          {
            'name': 'Confluence',
            'icon': 'https://img.icons8.com/color/48/confluence.png',
          },
        ],
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Skills', style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16),
          ...skills.map((cat) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(cat['category'] as String, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: accent)),
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      final isWide = constraints.maxWidth > 700;
                      final items = cat['items'] as List;
                      return Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: items.map((item) {
                          return SizedBox(
                            width: isWide ? 180 : constraints.maxWidth / 2 - 24,
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.network(
                                        item['icon'] as String,
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.contain,
                                        errorBuilder: (context, error, stackTrace) => const Icon(Icons.extension, size: 40),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(item['name'] as String, style: const TextStyle(fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

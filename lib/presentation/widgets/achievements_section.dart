import 'package:flutter/material.dart';

class AchievementsSection extends StatelessWidget {
  const AchievementsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final accent = Colors.deepOrangeAccent;
    final achievements = [
      {
        'icon': Icons.leaderboard,
        'color': Colors.amber,
        'title': 'Team Leadership & Enablement',
        'desc': 'Mentored junior developers and streamlined onboarding, boosting team productivity and code quality.',
      },
      {
        'icon': Icons.architecture,
        'color': Colors.blue,
        'title': 'Scalable Architecture Implementation',
        'desc': 'Spearheaded Clean Architecture and modular design, improving app performance and maintainability.',
      },
      {
        'icon': Icons.groups,
        'color': Colors.green,
        'title': 'Cross-Functional Collaboration',
        'desc': 'Led seamless API integration and delivery across 9+ high-impact projects.',
      },
      {
        'icon': Icons.emoji_events,
        'color': accent,
        'title': 'Recognized Excellence',
        'desc': 'Awarded Employee of the Month 4 times for high-quality solutions and exceeding expectations.',
      },
    ];
    return Container(
      width: double.infinity,
      color: const Color(0xFF181A20),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Achievements',
              style: Theme.of(context).textTheme.displayLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 38,
                  )),
          const SizedBox(height: 24),
          LayoutBuilder(
            builder: (context, constraints) {
              final isWide = constraints.maxWidth > 900;
              return Wrap(
                spacing: 32,
                runSpacing: 32,
                children: achievements
                    .map((a) => Container(
                          width: isWide ? 420 : constraints.maxWidth,
                          padding: const EdgeInsets.all(28),
                          decoration: BoxDecoration(
                            color: const Color(0xFF23242B),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: (a['color'] as Color).withOpacity(0.18),
                                  shape: BoxShape.circle,
                                ),
                                padding: const EdgeInsets.all(14),
                                child: Icon(a['icon'] as IconData, size: 36, color: a['color'] as Color),
                              ),
                              const SizedBox(width: 18),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(a['title'] as String, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: a['color'] as Color)),
                                    const SizedBox(height: 8),
                                    Text(a['desc'] as String, style: const TextStyle(fontSize: 16, color: Colors.white)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ))
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}

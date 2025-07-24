import 'package:flutter/material.dart';
import '../widgets/header_section.dart';
import '../widgets/professional_summary_section.dart';
import '../widgets/achievements_section.dart';
import '../widgets/experience_section.dart';
import '../widgets/education_section.dart';
import '../widgets/contact_section.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

final _headerKey = GlobalKey();
final _summaryKey = GlobalKey();
final _achievementsKey = GlobalKey();
final _experienceKey = GlobalKey();
final _educationKey = GlobalKey();
final _contactKey = GlobalKey();

const navItems = [
  {'label': 'Summary', 'key': 'summary'},
  {'label': 'Achievements', 'key': 'achievements'},
  {'label': 'Experience', 'key': 'experience'},
  {'label': 'Education', 'key': 'education'},
];

class PortfolioHomePage extends StatefulWidget {
  final VoidCallback? onToggleTheme;
  final bool isDark;
  const PortfolioHomePage({super.key, this.onToggleTheme, this.isDark = false});

  @override
  State<PortfolioHomePage> createState() => _PortfolioHomePageState();
}

class _PortfolioHomePageState extends State<PortfolioHomePage> {
  final _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _scrollToSection(String key) {
    final sectionKey = {
      'summary': _summaryKey,
      'achievements': _achievementsKey,
      'experience': _experienceKey,
      'education': _educationKey,
    }[key];
    if (sectionKey != null && sectionKey.currentContext != null) {
      Scrollable.ensureVisible(
        sectionKey.currentContext!,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final accent = Colors.deepOrangeAccent;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color(0xFF181A20),
      drawer: Drawer(
        backgroundColor: const Color(0xFF181A20),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Color(0xFF181A20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Vibhash Gyan Minz', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: accent)),
                  const SizedBox(height: 6),
                  const Text('Senior Flutter Developer', style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            ...navItems.map((item) => ListTile(
                  title: Text(item['label']!, style: const TextStyle(color: Colors.white)),
                  hoverColor: accent.withOpacity(0.08),
                  onTap: () {
                    Navigator.pop(context);
                    _scrollToSection(item['key']!);
                  },
                  trailing: Container(width: 6, height: 6, decoration: BoxDecoration(color: accent, shape: BoxShape.circle)),
                )),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF181A20), Color(0xFF23242B), Color(0xFF181A20)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 40),
                  KeyedSubtree(key: _headerKey, child: const HeaderSection()),
                  KeyedSubtree(key: _summaryKey, child: const ProfessionalSummarySection()),
                  KeyedSubtree(key: _achievementsKey, child: const AchievementsSection()),
                  KeyedSubtree(key: _experienceKey, child: const ExperienceSection()),
                  KeyedSubtree(key: _educationKey, child: const EducationSection()),
                  KeyedSubtree(key: _contactKey, child: const ContactSection()),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
          Positioned(
            top: 18,
            left: 18,
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF23242B),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                icon: const Icon(Icons.menu, size: 32),
                color: Colors.white,
                tooltip: 'Open navigation',
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _LetsWorkTogetherCTA(),
    );
  }
}

class _AnimatedSection extends StatefulWidget {
  final Widget child;
  final int delay;
  const _AnimatedSection({required this.child, required this.delay});
  @override
  State<_AnimatedSection> createState() => _AnimatedSectionState();
}

class _AnimatedSectionState extends State<_AnimatedSection> with SingleTickerProviderStateMixin {
  double _opacity = 0;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: widget.delay), () {
      if (mounted) setState(() => _opacity = 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _opacity,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
      child: widget.child,
    );
  }
}

class _LetsWorkTogetherCTA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final accent = Colors.deepOrangeAccent;
    final darkBg = const Color(0xFF23242B);
    return FloatingActionButton.extended(
      backgroundColor: darkBg,
      foregroundColor: accent,
      icon: const Icon(Icons.handshake),
      label: const Text('Let’s Work Together'),
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: darkBg,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text('Let’s Work Together!', style: TextStyle(color: accent)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Interested in collaborating or hiring me?', style: TextStyle(color: Colors.white)),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.email, size: 20, color: accent),
                    const SizedBox(width: 8),
                    const SelectableText('vibhashgyanminz23@gmail.com', style: TextStyle(color: Colors.white)),
                    IconButton(
                      icon: Icon(Icons.copy, size: 18, color: accent),
                      tooltip: 'Copy Email',
                      onPressed: () {
                        Clipboard.setData(const ClipboardData(text: 'vibhashgyanminz23@gmail.com'));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: const Text('Email copied!'),
                            backgroundColor: darkBg,
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.phone, size: 20, color: accent),
                    const SizedBox(width: 8),
                    const SelectableText('7008685131', style: TextStyle(color: Colors.white)),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.link, size: 20, color: accent),
                    const SizedBox(width: 8),
                    InkWell(
                      child: Text('LinkedIn', style: TextStyle(decoration: TextDecoration.underline, color: accent)),
                      onTap: () async {
                        final url = Uri.parse('https://www.linkedin.com/in/vibhash-gyan-minz-81581288');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Close', style: TextStyle(color: accent)),
              ),
            ],
          ),
        );
      },
    );
  }
}

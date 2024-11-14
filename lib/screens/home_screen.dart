import 'package:flutter/material.dart';

import '../widgets/contact_section.dart';
import '../widgets/footer.dart';
import '../widgets/hero_section.dart';
import '../widgets/skills_education_section.dart';
import '../widgets/works_section.dart';

class HomeScreen extends StatelessWidget {
  static final worksKey = GlobalKey();
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HeroSection(),
            const SkillsEducationSection(),
            WorksSection(key: worksKey),
            const ContactSection(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

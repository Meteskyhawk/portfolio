import 'package:flutter/material.dart';

class SkillsEducationSection extends StatelessWidget {
  const SkillsEducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 60.0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 1200,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 85.0, right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left Column - Skills
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Core Skills & Knowledge',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  color: Colors.green[500],
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 24),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Left Column
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildSkillSection('Platforms & Languages',
                                        'iOS (Swift), Android (Flutter, Dart), Firebase (Authentication, Cloud Messaging, Firestore), JSON, XML'),
                                    _buildSkillSection('Architectures',
                                        'MVVM, MVP, Clean Architecture'),
                                    _buildSkillSection('Development Tools',
                                        'Git (GitHub, GitLab, Bitbucket), CI/CD, Agile Development, Jira, Firebase, OpenAI API, Xcode, Android Studio, Visual Studio Code, Retool, Jenkins, Postman, Charles Proxy'),
                                    _buildSkillSection(
                                        'UI/UX Design & Prototyping',
                                        'Figma, Adobe XD, Sketch'),
                                    _buildSkillSection('Testing & Debugging',
                                        'Unit Testing, Widget Test, Integration Test, Firebase Test Lab, XCTest, Android Emulator, Debugging in Xcode & Android Studio, Appium (for automation testing), Selenium (for UI testing)'),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 32),
                              // Right Column
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildSkillSection('APIs & Integrations',
                                        'RESTful, GraphQL, OpenAI API, Firebase Cloud Functions, Push Notifications, Payment Gateways (e.g., Stripe, PayPal), Geolocation APIs, Maps APIs'),
                                    _buildSkillSection(
                                        'Artificial Intelligence & Machine Learning',
                                        'OpenAI, Gemini, Conversational AI Development, Basic Machine Learning Integration for Mobile, TensorFlow Lite for on-device ML, CoreML (for iOS)'),
                                    _buildSkillSection('Interpersonal',
                                        'Analytical problem-solving, collaborative team engagement, effective code reviews, project management, stakeholder communication, adaptability in fast-paced environments, time management'),
                                    _buildSkillSection(
                                        'Performance Optimization',
                                        'App performance monitoring, memory management, profiling tools (e.g., Instruments for iOS, Android Profiler), battery consumption optimization'),
                                    _buildSkillSection(
                                        'Security & Backend Services',
                                        'Data encryption, secure authentication methods (OAuth, JWT), Secure Storage, GDPR compliance, SSL Pinning, Node.js, Firebase Functions, serverless architectures'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 64),
                    // Right Column - Education & Experience
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Professional Experience',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(
                                  color: Colors.green[500],
                                ),
                          ),
                          const SizedBox(height: 16),
                          _buildExperience(
                            'FLONDON Design Agency',
                            'Flutter Mobile Developer',
                            'February 2024 – Present',
                            'London, UK',
                            [
                              'Leading development of Alice AI App for Android & iOS using Flutter and Firebase',
                              'Implemented state management with Provider, Firebase Auth, and OpenAI API integration',
                              'Established CI/CD pipelines and maintained clean architecture principles',
                              'Developed Book Flight App with real-time API integration and Workout Tracker app',
                            ],
                          ),
                          _buildExperience(
                            'Life Bonder',
                            'Flutter Mobile Developer',
                            'September 2023 – January 2024',
                            'London, UK',
                            [
                              'Built user-focused applications using Flutter, integrated third-party APIs, and conducted code reviews.',
                            ],
                          ),
                          Text(
                            'Education & Experience',
                            style: Theme.of(context)
                                .textTheme
                                .headlineMedium
                                ?.copyWith(
                                  color: Colors.green[500],
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          const SizedBox(height: 24),
                          _buildEducation(
                            'London South Bank University',
                            'BSc Computer Science',
                            'September 2019 – August 2022',
                          ),
                          _buildEducation(
                            'Bournemouth University',
                            'Cyber Security (Certificate)',
                            'September 2018 – July 2019',
                          ),
                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSkillSection(String title, String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            content,
            style: TextStyle(color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }

  Widget _buildEducation(String school, String degree, String period) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            school,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            degree,
            style: TextStyle(color: Colors.grey[400]),
          ),
          Text(
            period,
            style: TextStyle(color: Colors.grey[400], fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildExperience(String company, String role, String period,
      String location, List<String> highlights) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            company,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            '$role - $location',
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 16,
            ),
          ),
          Text(
            period,
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 8),
          ...highlights.map((highlight) => Padding(
                padding: const EdgeInsets.only(bottom: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '• ',
                      style: TextStyle(
                        color: Colors.green[500],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        highlight,
                        style: TextStyle(
                          color: Colors.grey[400],
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

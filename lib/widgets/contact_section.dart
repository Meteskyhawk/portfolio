import 'package:flutter/material.dart';
import 'package:portfolio/models/social_link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final socialLinks = [
  SocialLink(
    platform: 'github',
    href: 'https://github.com/Meteskyhawk',
    icon: FontAwesomeIcons.github,
  ),
  SocialLink(
    platform: 'linkedin',
    href: 'https://www.linkedin.com/in/metehangokdogan/',
    icon: FontAwesomeIcons.linkedin,
  ),
  SocialLink(
    platform: 'email',
    href: 'mailto:mtgokdogan@gmail.com',
    icon: FontAwesomeIcons.envelope,
  ),
];

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      padding: const EdgeInsets.symmetric(vertical: 80.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Get In Touch',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (final link in socialLinks)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: GestureDetector(
                    onTap: () {
                      _launchUrl(link.href);
                    },
                    child: Icon(
                      link.icon,
                      size: 32.0,
                      color: Colors.white,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
}

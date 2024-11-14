import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/models/project.dart';

final projects = [
  Project(
    id: 1,
    title: 'Alice AI App',
    images: List.generate(14, (index) => 'assets/images/alice${index + 1}.png'),
  ),
  Project(
    id: 2,
    title: 'Book Flight App',
    images: List.generate(5, (index) => 'assets/images/book${index + 1}.png'),
  ),
  Project(
    id: 3,
    title: 'Workout Tracker',
    images:
        List.generate(2, (index) => 'assets/images/workout${index + 1}.png'),
  ),
];

class WorksSection extends StatelessWidget {
  const WorksSection({super.key});

  Future<void> _downloadCV() async {
    const cvUrl = 'assets/MetehanG_Cv.pdf';
    if (!await launchUrl(Uri.parse(cvUrl))) {
      throw Exception('Could not launch $cvUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 80.0),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'My Works',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 48.0),
              // Phones section
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (final project in projects)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 600,
                              child: DeviceFrame(
                                device: Devices.ios.iPhone13,
                                isFrameVisible: true,
                                orientation: Orientation.portrait,
                                screen: Container(
                                  color: Colors.black,
                                  child: CarouselSlider(
                                    options: CarouselOptions(
                                      height: double.infinity,
                                      viewportFraction: 1.0,
                                      autoPlay: true,
                                      autoPlayInterval:
                                          const Duration(seconds: 3),
                                      autoPlayAnimationDuration:
                                          const Duration(milliseconds: 800),
                                      autoPlayCurve: Curves.fastOutSlowIn,
                                      pauseAutoPlayOnTouch: true,
                                      aspectRatio: 2.0,
                                    ),
                                    items: project.images.map((image) {
                                      return Image(
                                        image: image.startsWith('assets/')
                                            ? AssetImage(image)
                                            : NetworkImage(image)
                                                as ImageProvider,
                                        fit: BoxFit.cover,
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 16.0),
                            Text(
                              project.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              // CV Download button below phones
              const SizedBox(height: 64.0), // Space between phones and button
              ElevatedButton.icon(
                onPressed: _downloadCV,
                icon: const Icon(Icons.download),
                label: const Text('Download CV'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[500],
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                    vertical: 16.0,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

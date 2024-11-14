import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  void _scrollToWorks(BuildContext context) {
    final worksContext = HomeScreen.worksKey.currentContext;
    if (worksContext != null) {
      Scrollable.ensureVisible(
        worksContext,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Flutter Developer',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(height: 16.0),
                Text(
                  'A mobile application developer dedicated to delivering robust, optimized solutions for both Android and iOS platforms.',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: () => _scrollToWorks(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[500],
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 12.0,
                    ),
                  ),
                  child: const Text('View My Work'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:qavexpishtigold/core/app_state.dart';
import 'package:qavexpishtigold/widgets/ui.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBuilder(
      builder: (context, s) => QxScaffold(
        title: 'About',
        body: ListView(
          children: [
            const SizedBox(height: 16),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset('assets/images/icon.png',
                    width: 96,
                    height: 96,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.sports, size: 96)),
              ),
            ),
            const SizedBox(height: 12),
            const Center(
                child: Text('Qavex Pishti Gold',
                    style: TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold))),
            const Center(
                child: Text('Version 1.0.0',
                    style: TextStyle(fontSize: 13))),
            const SizedBox(height: 8),
            const QxCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Developed by QAVEX',
                      style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Developer: muhammad ehtasham'),
                  Text('Website: https://www.qavex.company/'),
                  Text('Email: games@qavex.company'),
                  Text('Phone: +923375621550'),
                  SizedBox(height: 8),
                  Text(
                      'Qavex Pishti Gold sweeps piles in an Istanbul kahvehane. Elif the backgammon champ, Mert the simit seller and Selin the tile artist match ranks and fire Jacks across 8 fully implemented modes.',
                      style: TextStyle(fontSize: 13, height: 1.5)),
                ],
              ),
            ),
            const QxCard(
              child: Text(
                  'Privacy: this game works fully offline. Your progress is stored only on your device. The optional "Buy Me a Coffee" purchase is processed by Google Play; QAVEX never sees your payment details.',
                  style: TextStyle(fontSize: 13, height: 1.5)),
            ),
          ],
        ),
      ),
    );
  }
}

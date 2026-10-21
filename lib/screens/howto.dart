import 'package:flutter/material.dart';
import 'package:qavexpishtigold/core/app_state.dart';
import 'package:qavexpishtigold/widgets/ui.dart';

class HowToScreen extends StatelessWidget {
  const HowToScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBuilder(
      builder: (context, s) => QxScaffold(
        title: 'How to Play',
        body: ListView(
          children: const [
            QxCard(
              child: Text('HOW TO PLAY\n\nGoal: score the most points in a single full-deck round.\n\n- 4 players. You hold 4 cards, 4 start on the table, the rest redeals.\n- Play a card matching the TOP table card rank to sweep the whole pile.\n- A Jack sweeps the pile any time.\n- Sweep a lone single card to score a PISHTI worth 10 points.\n- If you cannot sweep, your card joins the table.\n- Card values: every Ace 1, every Jack 1, 2 of clubs 2, 10 of diamonds 3. Most captured cards earns 3 more.\n- Highest total wins the round and the match.\n\nMODES\n- Classic: the pure single-round battle.\n- Timed Run: 10 minutes on the clock.\n- Daily Challenge: one seeded deal per day; streaks earn bonus chips.\n- Zen Table: no timer, free hints and undo.\n- Kids Mode: gentle guidance, easy rivals.\n- Practice: free play with auto-hints.\n- AI Ladder: climb 8 rungs from Easy to Expert.\n- Tournament: 5 rounds, highest total takes the crown.\n\nSimplifications for mobile: standard card values; a Jack sweeping a lone\nJack counts as a pishti like any lone-card sweep.',
                  style: TextStyle(fontSize: 15, height: 1.5)),
            ),
          ],
        ),
      ),
    );
  }
}

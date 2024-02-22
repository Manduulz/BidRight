import 'package:bid_right_mobile/util/theme.dart';
import 'package:flutter/material.dart';

import 'past_winnings_list.dart';

class MyWinningScreen extends StatefulWidget {
  const MyWinningScreen({Key? key}) : super(key: key);

  @override
  State<MyWinningScreen> createState() => _MyWinningScreenState();
}

class _MyWinningScreenState extends State<MyWinningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      appBar: AppBar(
        title: const Text(
          'My Winnings',
          style: TextStyle(fontSize: 14.0, color: Colors.white),
        ),
      ),
      body: const SafeArea(
        minimum: EdgeInsets.all(16.0),
        child: PastWinningsList(),
      ),
    );
  }}

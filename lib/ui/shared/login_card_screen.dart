import 'package:bid_right_mobile/util/theme.dart';
import 'package:bid_right_mobile/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class LoginCardScreen extends StatelessWidget {
  const LoginCardScreen({
    Key? key,
    required this.body,
    this.footer,
  }) : super(key: key);

  final Widget body;
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BRColors.bglightBlue,
      appBar: const CustomAppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 350),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: SingleChildScrollView(
                      child: body,
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (footer != null)
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: footer,
            ),
        ],
      ),
    );
  }
}

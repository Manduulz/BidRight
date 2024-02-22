import 'package:bid_right_mobile/models/document.dart';
import 'package:bid_right_mobile/ui/winnings/components/card_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class DocumentSection extends StatelessWidget {
  final List<DocumentSummary> documents;

  const DocumentSection({Key? key, required this.documents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardSection(
      label: 'Case Documents',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final document in documents)
            InkWell(
              onTap: () => _showDocument(document),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  document.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: const Color(0xff173F81)),
                ),
              ),
            ),
          if (documents.isEmpty) const Text('No documents'),
        ],
      ),
    );
  }

  Future<void> _showDocument(DocumentSummary document) async {
    final uri = Uri.tryParse(document.url);
    if (uri == null) {
      return;
    }

    try {
      await launchUrl(uri);
    } on PlatformException {
      // do nothing
    }
  }
}

import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';

const String _notDefined = 'Not Defined';

class BodyInfoText extends StatelessWidget {
  const BodyInfoText({
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(text: title, style: const TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: content.isNotEmpty ? content : _notDefined),
        ],
      ),
    ).withPadding(
      Paddings.topSmaller,
    );
  }
}

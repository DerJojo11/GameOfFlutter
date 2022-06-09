import 'package:flutter/material.dart';
import 'package:game_of_flutter/configs/paddings.dart';
import 'package:game_of_flutter/extensions/widget_extension.dart';
import 'package:game_of_flutter/l10n/l10n.dart';

class BodyInfoText extends StatelessWidget {
  const BodyInfoText({
    required this.title,
    required this.content,
    this.padding = Paddings.topSmall,
    this.maxLines = 2,
  });

  final String title;
  final String content;
  final EdgeInsets padding;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return RichText(
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: [
          TextSpan(text: title, style: const TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: content.isNotEmpty ? content : l10n.notDefined),
        ],
      ),
    ).withPadding(
      padding,
    );
  }
}

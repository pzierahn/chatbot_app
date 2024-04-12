import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_markdown_latex/flutter_markdown_latex.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:flutter_highlighter/themes/atom-one-dark.dart';
import 'package:flutter_highlighter/themes/atom-one-light.dart';
import 'package:highlighter/highlighter.dart' show highlight, Node;

/// Highlight Flutter Widget
class SelectableHighlightView extends StatelessWidget {
  /// The original code to be highlighted
  final String source;

  /// Highlight language
  ///
  /// It is recommended to give it a value for performance
  ///
  /// [All available languages](https://github.com/predatorx7/highlight/tree/master/highlight/lib/languages)
  final String? language;

  /// Highlight theme
  ///
  /// [All available themes](https://github.com/predatorx7/highlight/blob/master/flutter_highlighter/lib/themes)
  final Map<String, TextStyle> theme;

  /// Padding
  final EdgeInsetsGeometry? padding;

  /// Text styles
  ///
  /// Specify text styles such as font family and font size
  final TextStyle? textStyle;

  SelectableHighlightView(
    String input, {
    super.key,
    this.language,
    this.theme = const {},
    this.padding,
    this.textStyle,
    int tabSize = 8,
  }) : source = input.replaceAll('\t', ' ' * tabSize);

  List<TextSpan> _convert(List<Node> nodes) {
    List<TextSpan> spans = [];
    var currentSpans = spans;
    List<List<TextSpan>> stack = [];

    traverse(Node node) {
      if (node.value != null) {
        currentSpans.add(node.className == null
            ? TextSpan(text: node.value)
            : TextSpan(text: node.value, style: theme[node.className!]));
      } else if (node.children != null) {
        List<TextSpan> tmp = [];
        currentSpans
            .add(TextSpan(children: tmp, style: theme[node.className!]));
        stack.add(currentSpans);
        currentSpans = tmp;

        node.children!.forEach((n) {
          traverse(n);
          if (n == node.children!.last) {
            currentSpans = stack.isEmpty ? spans : stack.removeLast();
          }
        });
      }
    }

    for (var node in nodes) {
      traverse(node);
    }

    return spans;
  }

  static const _rootKey = 'root';
  static const _defaultFontColor = Color(0xff000000);
  static const _defaultBackgroundColor = Color(0xffffffff);

  // So we just use monospace here for now
  static const _defaultFontFamily = 'monospace';

  @override
  Widget build(BuildContext context) {
    var _textStyle = TextStyle(
      fontFamily: _defaultFontFamily,
      color: theme[_rootKey]?.color ?? _defaultFontColor,
    );
    if (textStyle != null) {
      _textStyle = _textStyle.merge(textStyle);
    }

    return Container(
      color: theme[_rootKey]?.backgroundColor ?? _defaultBackgroundColor,
      padding: padding,
      child: SelectableText.rich(
        TextSpan(
          style: _textStyle,
          children:
              _convert(highlight.parse(source, language: language).nodes!),
        ),
      ),
    );
  }
}

class CodeElementBuilder extends MarkdownElementBuilder {
  CodeElementBuilder(this.brightness);

  final Brightness brightness;

  @override
  Widget? visitElementAfter(md.Element element, TextStyle? preferredStyle) {
    var language = '';

    if (element.attributes['class'] != null) {
      String lg = element.attributes['class'] as String;
      // remove 'language-' prefix
      language = lg.substring(9);
    }

    return SizedBox(
      width: double.infinity,
      child: SelectableHighlightView(
        // The original code to be highlighted
        element.textContent,

        // Specify language
        // It is recommended to give it a value for performance
        language: language,

        tabSize: 4,

        // Specify highlight theme
        // All available themes are listed in `themes` folder
        theme: brightness == Brightness.light
            ? atomOneLightTheme
            : atomOneDarkTheme,

        // Specify padding
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),

        // Specify text style
        textStyle: GoogleFonts.robotoMono(),
      ),
    );
  }
}

class StyledMarkdown extends StatelessWidget {
  const StyledMarkdown({
    super.key,
    required this.data,
  });

  final String data;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final brightness = Theme.of(context).brightness;

    return MarkdownBody(
      data: data,
      selectable: true,
      builders: {
        'latex': LatexElementBuilder(
          textStyle: textTheme.bodyMedium,
        ),
        'code': CodeElementBuilder(brightness),
      },
      extensionSet: md.ExtensionSet(
        [
          LatexBlockSyntax(),
          ...md.ExtensionSet.gitHubFlavored.blockSyntaxes,
        ],
        [
          md.EmojiSyntax(),
          LatexInlineSyntax(),
          ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
        ],
      ),
    );
  }
}

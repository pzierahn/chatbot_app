import 'package:flutter/material.dart';
import 'package:flutter_highlighter/flutter_highlighter.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_markdown_latex/flutter_markdown_latex.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:flutter_highlighter/themes/atom-one-dark.dart';
import 'package:flutter_highlighter/themes/atom-one-light.dart';
import 'package:highlighter/highlighter.dart' show highlight, Node;

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
      child: HighlightView(
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

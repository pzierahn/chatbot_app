import 'package:flutter/material.dart';

// Source: https://m3.material.io/foundations/layout/applying-layout/window-size-classes
class Breakpoint {
  final WindowClass window;

  final double spacing;

  const Breakpoint({
    required this.window,
    required this.spacing,
  });

  factory Breakpoint.fromConstraints(BoxConstraints constraints) {
    double width = 359;

    if (constraints.debugAssertIsValid()) {
      width = constraints.normalize().maxWidth;
    }

    return _calcBreakpoint(width);
  }

  /// Following Material Design Guidlines [https://material.io/design/layout/responsive-layout-grid.html#grid-behavior]
  ///
  /// Uses [BuildContext] and [MediaQuery] to calculate the device breakpoint
  ///
  /// Use [Breakpoint.fromConstraints] when the widget does not take up the full screen
  factory Breakpoint.fromMediaQuery(BuildContext context) {
    final media = MediaQuery.of(context);

    double width = media.size.width;

    return _calcBreakpoint(width);
  }

  static Breakpoint _calcBreakpoint(double width) {
    if (width > 840) {
      return const Breakpoint(
        window: WindowClass.expanded,
        spacing: 24,
      );
    }

    if (width > 600) {
      return const Breakpoint(
        window: WindowClass.medium,
        spacing: 24,
      );
    }

    return const Breakpoint(
      window: WindowClass.compact,
      spacing: 16,
    );
  }

  @override
  String toString() {
    return '$window';
  }
}

class BreakpointBuilder extends StatelessWidget {
  /// Wraps layout builder and returns a breakpoint
  const BreakpointBuilder({
    super.key,
    this.context,
    required this.builder,
  });

  final Widget Function(BuildContext, Breakpoint) builder;
  final BuildContext? context;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return builder(context, Breakpoint.fromConstraints(constraints));
      },
    );
  }
}

enum WindowClass {
  compact,
  medium,
  expanded,
}

extension WindowSizeOperators on WindowClass {
  int get value => WindowClass.values.indexOf(this);

  /// Whether this [WindowSize] is larger than [other].
  bool operator >(WindowClass other) => value > other.value;

  /// Whether this [WindowSize] is larger than or equal to [other].
  bool operator >=(WindowClass other) => value >= other.value;

  /// Whether this [WindowSize] is smaller than [other].
  bool operator <(WindowClass other) => value < other.value;

  /// Whether this [WindowSize] is smaller than or equal to [other].
  bool operator <=(WindowClass other) => value <= other.value;
}

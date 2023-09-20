import 'package:flutter/material.dart';

class ConstrainedListView extends StatelessWidget {
  const ConstrainedListView({
    super.key,
    required this.children,
    this.maxWidth = 800,
    this.shrinkWrap = false,
    this.primary,
  });

  final List<Widget> children;
  final double maxWidth;
  final bool shrinkWrap;
  final bool? primary;

  @override
  Widget build(BuildContext context) {
    return ConstrainedListViewBuilder(
      itemCount: children.length,
      itemBuilder: (context, index) {
        return children[index];
      },
      maxWidth: maxWidth,
      shrinkWrap: shrinkWrap,
      primary: primary,
    );
  }
}

class ConstrainedListViewBuilder extends StatelessWidget {
  const ConstrainedListViewBuilder({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
    this.maxWidth = 800,
    this.shrinkWrap = false,
    this.primary,
  });

  final int itemCount;
  final NullableIndexedWidgetBuilder itemBuilder;
  final double maxWidth;
  final bool shrinkWrap;
  final bool? primary;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: shrinkWrap,
      primary: primary,
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            constraints: BoxConstraints(
              maxWidth: maxWidth,
            ),
            child: itemBuilder(context, index),
          ),
        );
      },
    );
  }
}

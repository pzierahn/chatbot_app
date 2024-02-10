import 'package:flutter/material.dart';

class ConstrainedListView extends StatelessWidget {
  const ConstrainedListView({
    super.key,
    required this.children,
    this.maxWidth = 800,
    this.shrinkWrap = false,
    this.primary,
    this.padding,
    this.divider,
  });

  final List<Widget> children;
  final double maxWidth;
  final bool shrinkWrap;
  final bool? primary;
  final Widget? divider;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return ConstrainedListViewBuilder(
      divider: divider,
      itemCount: children.length,
      itemBuilder: (context, index) {
        return children[index];
      },
      maxWidth: maxWidth,
      shrinkWrap: shrinkWrap,
      primary: primary,
      padding: padding,
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
    this.padding,
    this.divider,
  });

  final int itemCount;
  final NullableIndexedWidgetBuilder itemBuilder;
  final double maxWidth;
  final bool shrinkWrap;
  final bool? primary;
  final Widget? divider;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: divider == null
          ? ListView.builder(
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
            )
          : ListView.separated(
              shrinkWrap: shrinkWrap,
              primary: primary,
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
              separatorBuilder: (context, index) {
                return Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    constraints: BoxConstraints(
                      maxWidth: maxWidth,
                    ),
                    child: divider,
                  ),
                );
              },
              itemCount: itemCount,
            ),
    );
  }
}

class ConstrainedListViewStable extends StatelessWidget {
  const ConstrainedListViewStable({
    super.key,
    required this.children,
    this.maxWidth = 800,
    this.shrinkWrap = false,
    this.primary,
    this.padding,
    this.divider,
  });

  final List<Widget> children;
  final double maxWidth;
  final bool shrinkWrap;
  final bool? primary;
  final Widget? divider;

  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: SingleChildScrollView(
        primary: primary,
        child: Column(
          children: children
              .map(
                (child) => Align(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    constraints: BoxConstraints(
                      maxWidth: maxWidth,
                    ),
                    child: child,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

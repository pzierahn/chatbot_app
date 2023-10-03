import 'package:flutter/material.dart';

const _colorSeed = Colors.blue;

final _colorsLight = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: _colorSeed,
  background: Colors.white,
  surface: Colors.white,
  onBackground: Colors.black,
  onSurface: Colors.black,
  surfaceTint: Colors.white,
);

final _colorsDark = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: _colorSeed,
);

final borderRadius = BorderRadius.circular(8);

final _roundedShape = RoundedRectangleBorder(
  borderRadius: borderRadius,
);

final lightTheme = ThemeData(
  colorScheme: _colorsLight,
  chipTheme: ChipThemeData(
    side: BorderSide(
      color: _colorsLight.outlineVariant,
      width: 1.0,
    ),
    shape: _roundedShape,
    backgroundColor: _colorsLight.surfaceVariant.withOpacity(0.25),
    labelStyle: TextStyle(
      color: _colorsLight.onSurfaceVariant,
    ),
    iconTheme: IconThemeData(
      color: _colorsLight.onSurfaceVariant,
    ),
  ),
  useMaterial3: true,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(_roundedShape),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(_roundedShape),
    ),
  ),
  listTileTheme: ListTileThemeData(
    shape: _roundedShape,
  ),
);

final darkTheme = ThemeData(
  colorScheme: _colorsDark,
  chipTheme: ChipThemeData(
    side: BorderSide(
      color: _colorsDark.outlineVariant,
      width: 1.0,
    ),
    shape: _roundedShape,
    backgroundColor: _colorsDark.surfaceVariant.withOpacity(0.25),
    labelStyle: TextStyle(
      color: _colorsDark.onSurfaceVariant,
    ),
    iconTheme: IconThemeData(
      color: _colorsDark.onSurfaceVariant,
    ),
  ),
  useMaterial3: true,
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(_roundedShape),
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.all(_roundedShape),
    ),
  ),
  listTileTheme: ListTileThemeData(
    shape: _roundedShape,
  ),
);

import 'package:flutter/material.dart';

// Colores del equipo JAGUARS
const Color kPrimaryOrange = Color(0xFFFF6B35);   // Naranja principal
const Color kSecondaryBlack = Color(0xFF2C2C2C);  // Negro secundario  
const Color kTertiaryWhite = Color(0xFFFFFFFF);   // Blanco terciario
const Color kAccentOrange = Color(0xFFFF8C42);    // Naranja más claro para acentos
const Color kDarkOrange = Color(0xFFE55A2B);      // Naranja más oscuro

// Espaciado
const double kPaddingSmall = 8.0;
const double kPaddingMedium = 16.0;
const double kPaddingLarge = 24.0;
const double kPaddingXLarge = 32.0;

// Bordes redondeados
const double kBorderRadius = 12.0;
const double kBorderRadiusLarge = 20.0;

// Tamaños de texto
const double kTextSizeSmall = 12.0;
const double kTextSizeMedium = 16.0;
const double kTextSizeLarge = 20.0;
const double kTextSizeXLarge = 24.0;

// Estilos de texto
const TextStyle kHeadingStyle = TextStyle(
  fontSize: kTextSizeXLarge,
  fontWeight: FontWeight.bold,
  color: kSecondaryBlack,
);

const TextStyle kSubheadingStyle = TextStyle(
  fontSize: kTextSizeLarge,
  fontWeight: FontWeight.w600,
  color: kSecondaryBlack,
);

const TextStyle kBodyStyle = TextStyle(
  fontSize: kTextSizeMedium,
  color: kSecondaryBlack,
);

const TextStyle kButtonStyle = TextStyle(
  fontSize: kTextSizeMedium,
  fontWeight: FontWeight.bold,
  color: kTertiaryWhite,
);

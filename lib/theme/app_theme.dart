import 'package:flutter/material.dart';

// --- Paleta "Tierra y Mar Tropical" ---

// Primario: Verde Selva / Azul Profundo
const Color appPrimaryColor = Color(0xFF00796B);

// Secundario / Acento: Naranja Cálido
const Color appAccentColor = Color(0xFFFF8F00);

// --- Colores Neutros ---

// Fondo Principal
const Color appBackgroundColor = Color(0xFFF5F5F5);

// Superficies (Tarjetas, Dialogos)
const Color appSurfaceColor = Color(0xFFFFFFFF); // Blanco puro

// Texto Principal (sobre fondos claros)
const Color appTextPrimary = Color(0xFF212121); // Gris oscuro

// Texto Secundario / Desactivado (sobre fondos claros)
const Color appTextSecondary = Color(0xFF757575); // Gris medio

// Texto sobre colores primarios/acentos (cuando el fondo es oscuro)
const Color appTextOnPrimary = Color(0xFFFFFFFF); // Blanco puro
const Color appTextOnAccent = Color(0xFF000000); // Negro (para mejor contraste en naranja claro)

// --- Colores de Estado (Funcionales) ---

// Error
const Color appErrorColor = Color(0xFFD32F2F); // Rojo intenso

// Éxito / Confirmación
const Color appSuccessColor = Color(0xFF388E3C); // Verde oscuro

// Advertencia
const Color appWarningColor = Color(0xFFFBC02D); // Amarillo ámbar

// --- Paleta "Tierra y Mar Tropical" (Modo Oscuro) ---

// Primario: Un verde/azul profundo pero visible en fondos oscuros
const Color appPrimaryColorDark = Color(0xFF4DB6AC); // Teal 300 (más claro que el primario claro)

// Secundario / Acento: Naranja Cálido (se mantiene vibrante)
const Color appAccentColorDark = Color(0xFFFFB300); // Amber 500 (ligeramente más claro que el acento claro)

// --- Colores Neutros (Modo Oscuro) ---

// Fondo Principal (Dark)
const Color appBackgroundColorDark = Color(0xFF121212); // Gris muy oscuro, casi negro

// Superficies (Tarjetas, Dialogos - Dark)
const Color appSurfaceColorDark = Color(0xFF1E1E1E); // Gris oscuro

// Texto Principal (sobre fondos oscuros)
const Color appTextPrimaryDark = Color(0xFFFFFFFF); // Blanco (para alto contraste)

// Texto Secundario / Desactivado (sobre fondos oscuros)
const Color appTextSecondaryDark = Color(0xFFB0B0B0); // Gris claro

// Texto sobre colores primarios/acentos (cuando el fondo es claro)
const Color appTextOnPrimaryDark = Color(0xFF000000); // Negro (para contraste sobre Teal 300)
const Color appTextOnAccentDark = Color(0xFF000000); // Negro (para contraste sobre Amber 500)

// --- Colores de Estado (Funcionales - Modo Oscuro) ---

// Error
const Color appErrorColorDark = Color(0xFFEF5350); // Rojo más claro (Red 400)

// Éxito / Confirmación
const Color appSuccessColorDark = Color(0xFF66BB6A); // Verde más claro (Green 400)

// Advertencia
const Color appWarningColorDark = Color(0xFFFFCA28); // Amarillo más claro (Amber 400)

class AppTheme {
  ThemeData getLightTheme() => ThemeData.light().copyWith(
    scaffoldBackgroundColor: appBackgroundColor,
    appBarTheme: AppBarTheme(
      toolbarHeight: 48,
      backgroundColor: appPrimaryColor,
      titleTextStyle: TextStyle(
        color: appTextOnPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: CardThemeData(
      color: appSurfaceColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: appPrimaryColor,
      onPrimary: appTextOnPrimary,
      secondary: appAccentColor,
      surface: appSurfaceColor,
    ),
  );

  ThemeData getDarkTheme() => ThemeData.dark().copyWith(
    scaffoldBackgroundColor: appBackgroundColorDark,
    appBarTheme: AppBarTheme(
      toolbarHeight: 48,
      backgroundColor: appPrimaryColorDark,
      titleTextStyle: TextStyle(
        color: appTextOnPrimaryDark,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    cardTheme: CardThemeData(
      color: appSurfaceColorDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
    ),
    colorScheme: ColorScheme.dark(
      primary: appPrimaryColorDark,
      onPrimary: appTextOnPrimaryDark,
      secondary: appAccentColorDark,
      surface: appSurfaceColorDark,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';
import 'screens/players_screen.dart';
import 'screens/matches_screen.dart';
import 'screens/products_screen.dart';
import 'screens/standings_screen.dart';
import 'screens/promotions_screen.dart';
import 'screens/main_navigation.dart';
import 'utils/constants.dart';

void main() {
  runApp(const JaguarsApp());
}

class JaguarsApp extends StatelessWidget {
  const JaguarsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Configurar la barra de estado
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
    );

    return MaterialApp(
      title: 'JAGUARS - Equipo de Baloncesto',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(
          kPrimaryOrange.value,
          <int, Color>{
            50: kPrimaryOrange.withOpacity(0.1),
            100: kPrimaryOrange.withOpacity(0.2),
            200: kPrimaryOrange.withOpacity(0.3),
            300: kPrimaryOrange.withOpacity(0.4),
            400: kPrimaryOrange.withOpacity(0.5),
            500: kPrimaryOrange,
            600: kDarkOrange,
            700: kDarkOrange,
            800: kDarkOrange,
            900: kDarkOrange,
          },
        ),
        primaryColor: kPrimaryOrange,
        scaffoldBackgroundColor: kTertiaryWhite,
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryOrange,
          foregroundColor: kTertiaryWhite,
          elevation: 0,
          centerTitle: true,
        ),
        cardTheme: CardTheme(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          margin: const EdgeInsets.all(kPaddingSmall),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryOrange,
            foregroundColor: kTertiaryWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(kBorderRadius),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: kPaddingLarge,
              vertical: kPaddingMedium,
            ),
            textStyle: kButtonStyle,
          ),
        ),
        textTheme: const TextTheme(
          headlineLarge: kHeadingStyle,
          headlineMedium: kSubheadingStyle,
          bodyLarge: kBodyStyle,
          bodyMedium: kBodyStyle,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: kPrimaryOrange,
          primary: kPrimaryOrange,
          secondary: kAccentOrange,
          surface: kTertiaryWhite,
          background: kTertiaryWhite,
          onPrimary: kTertiaryWhite,
          onSecondary: kSecondaryBlack,
          onSurface: kSecondaryBlack,
          onBackground: kSecondaryBlack,
        ),
      ),
      home: const MainNavigation(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/players': (context) => const PlayersScreen(),
        '/matches': (context) => const MatchesScreen(),
        '/products': (context) => const ProductsScreen(),
        '/standings': (context) => const StandingsScreen(),
        '/promotions': (context) => const PromotionsScreen(),
      },
    );
  }
}

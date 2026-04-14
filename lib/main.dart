import 'package:flutter/material.dart';

import 'models/product.dart';
import 'screens/cart_screen.dart';
import 'screens/home_screen.dart';
import 'screens/product_detail_screen.dart';

void main() {
  runApp(const MiniCatalogApp());
}

class MiniCatalogApp extends StatelessWidget {
  const MiniCatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mini Katalog Uygulaması',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ProductDetailScreen.routeName) {
          final product = settings.arguments as Product;

          return MaterialPageRoute(
            builder: (context) => const ProductDetailScreen(),
            settings: RouteSettings(arguments: product),
          );
        }

        if (settings.name == CartScreen.routeName) {
          final cartItems = settings.arguments as List<Product>;

          return MaterialPageRoute(
            builder: (context) => CartScreen(cartItems: cartItems),
          );
        }

        return null;
      },
    );
  }
}
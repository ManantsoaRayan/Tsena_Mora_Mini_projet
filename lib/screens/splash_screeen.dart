import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:product_versus_app/providers/product_provider.dart';
import 'package:provider/provider.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({super.key});

  @override
  State<SplashScreeen> createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreeen> {
  @override
  void initState() {
    super.initState();
    if(context.read<ProductProvider>().isLoading == false){
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacementNamed(context, '/products');
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Text(
            "Tsena Mora",
            style: GoogleFonts.mulish(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}

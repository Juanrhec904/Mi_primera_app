import 'package:flutter/material.dart';
import 'feature/home/presentation/wiew/Login.dart';
import 'feature/home/presentation/wiew/Loading.dart';
import 'feature/home/presentation/wiew/crear.dart';
import 'feature/home/presentation/wiew/sucess.dart';
import 'feature/home/presentation/wiew/Failure.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, 
    home: sucess()
    );
  }
}

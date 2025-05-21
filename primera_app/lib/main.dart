import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primera_app/feature/home/bloc/home_bloc.dart';
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
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is Homesucess) {
              return sucess();
            } else if (state is Homeloanding) {
              return Loandig();
            } else if (state is Homefailure) {
              return failure();
            }
            return Login();
          },
        ),
      ),
    );
  }
}

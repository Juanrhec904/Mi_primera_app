part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}
final class Homeloanding extends HomeState {}
final class Homesucess extends HomeState {}
final class Homefailure extends HomeState {}

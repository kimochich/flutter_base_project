part of 'home_page_cubit.dart';

abstract class HomePageState extends Equatable {
  const HomePageState();
}

class HomePageInitial extends HomePageState {
  @override
  List<Object> get props => [];
}

class GetUserSuccess extends HomePageState {
  final UserResponse userResponse;

  const GetUserSuccess(this.userResponse);

  @override
  List<Object> get props => [];
}

class GetUserError extends HomePageState {
  @override
  List<Object> get props => [];
}

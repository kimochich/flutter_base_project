import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_temp_project/data/repositories/user_repository.dart';
import 'package:flutter_temp_project/modules/home_page/models/response/user_response.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  UserResponse? _userData;
  UserRepository userRepository;

  UserResponse? get userData => _userData;

  HomePageCubit({required this.userRepository}) : super(HomePageInitial()) {
    getListUser();
  }

  Future getListUser() async {
    final response = await userRepository.getListUser("hai");
    if (response.response.statusCode == 200) {
      _userData = response.data;
      emit(GetUserSuccess(userData!));
    } else {
      emit(GetUserError());
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {

  PageController pageController = PageController();
  int currentIndex = 0;

  void onChangeTab(int index){
    currentIndex = index;
    pageController.jumpToPage(index);
    emit(DashboardInitial());
  }
  DashboardCubit() : super(DashboardInitial());
}

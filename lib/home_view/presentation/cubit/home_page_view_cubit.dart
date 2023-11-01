import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'home_page_view_state.dart';


class HomePageViewDartCubit extends Cubit<HomePageViewState> {
  HomePageViewDartCubit() :
        super(HomePageViewState.currentPage(1, Colors.grey));
}

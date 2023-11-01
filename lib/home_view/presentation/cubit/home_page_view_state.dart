import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_view_state.freezed.dart';

@freezed
class HomePageViewState with _$HomePageViewState {
  factory HomePageViewState.currentPage(
     final  int index,
      final Color currentTapBorderColor


      ) = _Initial;

}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_clone_app/src/components/bottomsheet.dart';

enum RouteNames { home, explore, add, subscribe, library }

class AppController extends GetxService {
  static AppController get to => Get.find();
  final _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;
  set currentIndex(int value) {
    if (value == 2) {
      _showBottomSheet();
    } else {
      _currentIndex.value = value;
    }
  }

  void _showBottomSheet() {
    Get.bottomSheet(const YoutubeBottomSheet());
  }
}

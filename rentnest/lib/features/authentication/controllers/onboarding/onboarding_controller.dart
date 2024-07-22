import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rentnest/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  /// Jump to specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  /// update current index and jump to nxt page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.offAll(() => const LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  /// update current index and jump to last page
  void skiptPage(){
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
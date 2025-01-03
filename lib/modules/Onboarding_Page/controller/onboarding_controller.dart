import 'package:get/get.dart';
import 'package:flutter/material.dart';

class OnboardingController extends GetxController {
  final onboardingPages = [
    {
      "image": "assets/img/Gambar1.png",
      "title": "Selamat datang di gojek!",
      "description":
          "Aplikasi yang bikin hidupmu lebih mudah. Bantuin semua kebutuhanmu, kapanpun, dan dimanapun.",
    },
    {
      "image": "assets/img/Gambar2.png",
      "title": "Transportasi & logistik",
      "description":
          "Antarin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang.",
    },
    {
      "image": "assets/img/Gambar3.png",
      "title": "Pesan makan & belanja",
      "description": "Lagi ngidam sesuatu? Gojek beliin gak pakai lama.",
    },
  ].obs;

  var currentPage = 0.obs;

  final PageController pageController = PageController();

  void setPage(int index) {
    currentPage.value = index;
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}

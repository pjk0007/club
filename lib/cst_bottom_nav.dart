import 'package:flutter/material.dart';
import 'package:samsung_club/club.dart';
import 'package:samsung_club/home.dart';
import 'package:samsung_club/more.dart';
import 'package:samsung_club/study.dart';

List<dynamic> bottomNav = [
  {
    'title' : '요기모여',
    'label': '홈',
    'icon': Icons.home_outlined,
    'activateIcon': Icons.home,
    'body':Home()
  },
  {
    'title' : '클럽',
    'label': '클럽',
    'icon': Icons.search_outlined,
    'activateIcon': Icons.search,
    'body': Study()
  },
  {
    'title': '그룹',
    'label': '그룹',
    'icon': Icons.people_alt_outlined,
    'activateIcon': Icons.people_alt,
    'body':Club()
  },
  {
    'title' : '더보기',
    'label': '더보기',
    'icon': Icons.more_horiz_outlined,
    'activateIcon': Icons.more_horiz,
    'body':More()
  }
];
import 'package:flutter/material.dart';
import 'package:lets_move/util/img.dart';

class Slide1 {
  final String image;
  final String title;
  final String desc;

  Slide1({
    @required this.image,
    @required this.title,
    @required this.desc,
  });
}

class Slide2 {
  final String image;
  final String title;
  final String desc1;
  final String desc2;
  final String rating;

  Slide2({
    @required this.image,
    @required this.title,
    @required this.desc1,
    @required this.desc2,
    @required this.rating,
  });
}

class Slide3 {
  final String image;
  final String title;
  final String desc;
  final String sign;

  Slide3({
    @required this.image,
    @required this.title,
    @required this.desc,
    @required this.sign,
  });
}

class Slide4 {
  final String image;
  final String title;
  final String desc;

  Slide4({
    @required this.image,
    @required this.title,
    @required this.desc,
  });
}

final slideList = [
  Slide1(
    image: sliderTech,
    title: 'Technology Advantage',
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
  ),
  Slide1(
    image: sliderHand,
    title: 'LetsMove Guarantee',
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
  ),
  Slide1(
    image: sliderMoney,
    title: 'Completed Transactions',
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
  ),
];

final slideList2 = [
  Slide2(
    image: sliderfeature1,
    title: 'Warren, MI',
    desc1: '3 BD | 1.0 BA | 1,092 SQFT',
    desc2: 'Current Rent \$1,075 | Cap Rate 8.34% Total Return \$37,427/5-Yr',
    rating: 'Neighborhood Rating',
  ),
  Slide2(
    image: sliderfeature2,
    title: 'Warren, MI',
    desc1: '3 BD | 1.0 BA | 1,092 SQFT',
    desc2: 'Current Rent \$1,075 | Cap Rate 8.34% Total Return \$37,427/5-Yr',
    rating: 'Neighborhood Rating',
  ),
  Slide2(
    image: sliderfeature3,
    title: 'Warren, MI',
    desc1: '3 BD | 1.0 BA | 1,092 SQFT',
    desc2: 'Current Rent \$1,075 | Cap Rate 8.34% Total Return \$37,427/5-Yr',
    rating: 'Neighborhood Rating',
  ),
];

final slideList3 = [
  Slide3(
    image: sliderfeature1,
    title: "Amazing! It's Awesome",
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
    sign: 'Andew S. Phillip',
  ),
  Slide3(
    image: sliderfeature2,
    title: "Amazing! It's Awesome",
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
    sign: 'Andew S. Phillip',
  ),
  Slide3(
    image: sliderfeature3,
    title: "Amazing! It's Awesome",
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
    sign: 'Andew S. Phillip',
  ),
];

final slideList4 = [
  Slide4(
    image: slidernews1,
    title: 'recode',
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
  ),
  Slide4(
    image: slidernews2,
    title: 'Forbes',
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
  ),
  Slide4(
    image: slidernews3,
    title: 'The wall street journal',
    desc: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla.',
  ),
];
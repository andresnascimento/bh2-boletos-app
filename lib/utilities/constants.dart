import 'package:flutter/material.dart';

const kColorBlack = Color.fromRGBO(10, 16, 69, 1);
const kColorGray200 = Color.fromRGBO(157, 159, 181, 1);
const kColorGray300 = Color.fromRGBO(108, 112, 143, 1);
const kColorGray400 = Color.fromRGBO(59, 64, 106, 1);
const kColorGray50 = Color.fromRGBO(231, 232, 237, 1);
const kColorSecondary = Color.fromRGBO(101, 10, 255, 1);
const kColorSecondary50 = Color.fromRGBO(229, 214, 255, 1);
const kColorPrimary = Color.fromRGBO(255, 188, 10, 1);
const kColorSuccess = Color.fromRGBO(18, 194, 151, 1);

const kHeaderLG = TextStyle(
    fontSize: 38, height: 1.4, color: kColorBlack, fontWeight: FontWeight.w800);
const kTextBody = TextStyle(fontSize: 16, height: 1.4, color: kColorBlack);
const kTextBodySM = TextStyle(fontSize: 14, height: 1.4, color: kColorBlack);
const kTextHeader = TextStyle(
    fontSize: 28, height: 1.4, color: kColorBlack, fontWeight: FontWeight.bold);

const kInputDecoration = InputDecoration(
  border: OutlineInputBorder(
    gapPadding: 8.0,
    borderSide: BorderSide(color: kColorGray50),
  ),
  // enabledBorder: const OutlineInputBorder(
  //   borderSide: const BorderSide(color: kColorGray300, width: 0.0),
  // ),
);

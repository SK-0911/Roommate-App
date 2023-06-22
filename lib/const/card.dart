import 'package:flutter/material.dart';

enum CardBrand { visa, mastercard }

class CreditCard {
  int id;
  String cardHolder, number;
  CardBrand brand;
  List<Color> colors;

  CreditCard({
    required this.id,
    required this.cardHolder,
    required this.number,
    required this.brand,
    required this.colors,
  });
}

List<CreditCard> cards = [
  CreditCard(
    id: 1,
    cardHolder: "DevDesign",
    number: "1234 5678 9101 1123",
    brand: CardBrand.visa,
    colors: [
      Color(0xFF0000FF),
      Color(0XFF377CFF),
    ],
  ),
  CreditCard(
    id: 2,
    cardHolder: "DevDesign",
    number: "1234 5678 9101 1123",
    brand: CardBrand.mastercard,
    colors: [
      Color(0xFFFFA351),
      Color(0xFFF83D34),
    ],
  ),
  CreditCard(
    id: 3,
    cardHolder: "DevDesign",
    number: "1234 5678 9101 1123",
    brand: CardBrand.mastercard,
    colors: [
      Color(0xFF990099),
      Color(0xFF660066),
    ],
  ),
];
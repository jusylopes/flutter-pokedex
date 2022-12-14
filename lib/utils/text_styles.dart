import 'package:flutter/material.dart';

abstract class PokemonTextStyles {
  static const applicationTitle = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  static const pokemonName = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Color(0x9917171B),
  );

  static final pokemonNameDetail = TextStyle(
    fontSize: 100.0,
    fontWeight: FontWeight.bold,
    foreground: Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..color = Colors.white,
  );

  static const filterTitle =
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

  static const description =
      TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal);

  static const pokemonNumber = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    color: Color(0x9917171B),
  );

  static const pokemonType = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );

  static const aboutPokemon = TextStyle(
    fontSize: 14.0,
    color: Color(0xff747476),
  );

  static const informationTitleRow = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  static const informationTextRow = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Color(0xff747476),
  );
}

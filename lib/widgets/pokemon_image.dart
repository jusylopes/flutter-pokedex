import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';

class PokemonImage extends StatelessWidget {
  const PokemonImage({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      width: 150,
      pokemon.sprites.frontDefault,
      fit: BoxFit.cover,
      filterQuality: FilterQuality.high,
    );
  }
}
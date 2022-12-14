import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/utils/text_styles.dart';

class PokemonTextDetail extends StatelessWidget {
  const PokemonTextDetail({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (Rect bounds) {
          return LinearGradient(
            colors: [
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0.0),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ).createShader(bounds);
        },
        child: Text(pokemon.name.toUpperCase(),
            style: PokemonTextStyles.pokemonNameDetail,
            overflow: TextOverflow.fade,
            textAlign: TextAlign.center,
            maxLines: 1,
            softWrap: false),
      ),
    );
  }
}

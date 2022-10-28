import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/utils/colors.dart';
import 'package:pokedex/widgets/pokemon_card_data.dart';
import 'package:pokedex/widgets/pokemon_image.dart';
import 'package:pokedex/widgets/pokemon_text_detail.dart';

class PokemonDetailPage extends StatelessWidget {
  const PokemonDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemon = ModalRoute.of(context)!.settings.arguments as PokemonModel;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            PokemonColors().pokeColorBackground(pokemon.types[0].type.name),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight / 5),
          child: Stack(alignment: AlignmentDirectional.topCenter, children: [
            Center(child: PokemonTextDetail(pokemon: pokemon)),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              PokemonImage(pokemon: pokemon),
              PokemonCardData(pokemon: pokemon)
            ]),
          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';
import 'package:pokedex/utils/colors.dart';
import 'package:pokedex/utils/routes.dart';
import 'package:pokedex/widgets/pokeball.dart';
import 'package:pokedex/widgets/pokemon_card_data.dart';
import 'package:pokedex/widgets/pokemon_image.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    Key? key,
    required this.scrollController,
    required this.pokemonList,
  }) : super(key: key);

  final ScrollController scrollController;
  final List<PokemonModel> pokemonList;

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView.builder(
          controller: scrollController,
          itemCount: pokemonList.length,
          itemBuilder: (context, index) {
            final pokemon = pokemonList[index];

            return GestureDetector(
              onTap: () {
              Navigator.pushNamed(
              context,
              Routes.pokemonDetail,
              arguments: pokemon,
              
            );
              },
              child: Stack(alignment: Alignment.centerRight, children: [
                Container(
                  height: 130,
                  margin: const EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    color: PokemonColors()
                        .pokeColorBackground(pokemon.types[0].type.name),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 20,
                        color: PokemonColors()
                            .pokeColorBackground(pokemon.types[0].type.name)
                            .withOpacity(0.4),
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: PokemonCardData(pokemon: pokemon)),
                ),
                const Pokeball(),
                PokemonImage(pokemon: pokemon),
              ]),
            );
          },
        ),
      ),
    );
  }
}
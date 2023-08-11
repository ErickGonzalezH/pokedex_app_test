import 'package:flutter/material.dart';
import 'package:pokedex_app_test/models/poke_model.dart';
import 'package:pokedex_app_test/widgets/pokemon_card.dart';

Widget pokemonGridItem(
  BuildContext context,
  int index,
  Animation<double> animation,
  List<Pokemon> pokemon,
) =>
    FadeTransition(
      opacity: Tween<double>(
        begin: 0,
        end: 1,
      ).animate(animation),
      child: pokemon.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : PokemonCard(
              id: pokemon.elementAt(index).id,
              name: pokemon.elementAt(index).name,
              image: pokemon.elementAt(index).img,
            ),
    );

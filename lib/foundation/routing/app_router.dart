import 'package:dragonball_heroes/features/character_details/view/character_details_page.dart';
import 'package:dragonball_heroes/features/characters/bloc/bloc.dart';
import 'package:dragonball_heroes/features/characters/view/characters_page.dart';
import 'package:dragonball_heroes/foundation/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/characters',
  routes: [
    ShellRoute(
      builder: (context, state, child) => BlocProvider(
        create: (context) => getIt.get<CharactersBloc>(),
        child: child,
      ),
      routes: [
        GoRoute(
          path: '/characters',
          name: 'characters',
          builder: (context, state) {
            return const CharactersPage();
          },
        ),
        GoRoute(
          path: '/character/:id',
          name: 'character-details',
          builder: (context, state) {
            final id = state.pathParameters['id']!;

            return CharacterDetailsPage(characterId: int.parse(id));
          },
        ),
      ],
    ),
  ],
);

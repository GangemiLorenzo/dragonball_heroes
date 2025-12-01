import 'package:dragonball_heroes/features/character_details/view/view.dart';
import 'package:dragonball_heroes/features/character_details/widget/widget.dart';
import 'package:dragonball_heroes/features/characters/bloc/bloc.dart';
import 'package:dragonball_heroes/foundation/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterDetailsPage extends StatefulWidget {
  const CharacterDetailsPage({required this.characterId, super.key});

  final int characterId;

  @override
  State<CharacterDetailsPage> createState() => _CharacterDetailsPageState();
}

class _CharacterDetailsPageState extends State<CharacterDetailsPage> {
  @override
  void initState() {
    super.initState();
    // Trigger characters fetch if not already loaded
    // This can be useful if the user navigates directly to this page
    // via web link or deep link
    final bloc = context.read<CharactersBloc>();
    if (bloc.state.characters.isEmpty && !bloc.state.loading) {
      bloc.add(const FetchCharactersEvent());
    }

    if (bloc.state.getCharacterById(widget.characterId) != null) {
      // Character already loaded, but we need to fetch details
      bloc.add(FetchCharacterEvent(widget.characterId));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
      builder: (context, state) {
        final character = state.getCharacterById(widget.characterId);

        if (state.loading && character == null) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(height: 16),
                  Text(l10n.loading),
                ],
              ),
            ),
          );
        }

        if (character == null) {
          return const EmptyCharacterPage();
        }

        return Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.surface,
                    ],
                    stops: const [0.3, 0.4],
                  ),
                ),
                child: SingleChildScrollView(
                  child: Container(
                    color: Theme.of(context).colorScheme.surface,
                    child: Column(
                      children: [
                        CharacterDetailsTop(character: character),
                        CharacterDetailsContent(
                          character: character,
                          isLoadingDetails: state.loadingDetails,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top + 16,
                left: 16,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(
                      context,
                    ).colorScheme.onPrimaryContainer.withAlpha(60),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

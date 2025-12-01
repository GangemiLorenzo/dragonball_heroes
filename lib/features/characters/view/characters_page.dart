import 'package:dragonball_heroes/features/characters/bloc/bloc.dart';
import 'package:dragonball_heroes/foundation/global.dart';
import 'package:dragonball_heroes/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:transparent_image/transparent_image.dart';

class CharactersPage extends StatefulWidget {
  const CharactersPage({super.key});

  @override
  State<CharactersPage> createState() => _CharactersPageState();
}

class _CharactersPageState extends State<CharactersPage> {
  @override
  void initState() {
    super.initState();
    context.read<CharactersBloc>().add(const FetchCharactersEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(l10n.appName)),
      extendBody: true,
      body: _CharactersList(l10n: l10n),
    );
  }
}

class _CharactersList extends StatefulWidget {
  const _CharactersList({required this.l10n});

  final AppLocalizations l10n;

  @override
  State<_CharactersList> createState() => _CharactersListState();
}

class _CharactersListState extends State<_CharactersList> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      final state = context.read<CharactersBloc>().state;
      if (!state.loading &&
          !state.loadingMore &&
          state.pagination.hasNextPage) {
        context.read<CharactersBloc>().add(const FetchMoreCharactersEvent());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharactersBloc, CharactersState>(
      builder: (context, state) {
        if (state.loading && state.characters.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state.hasError && state.characters.isEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.l10n.errorWithMessage(state.errorMessage ?? ''),
                  style: const TextStyle(color: Colors.red),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    context.read<CharactersBloc>().add(
                      const FetchCharactersEvent(),
                    );
                  },
                  child: Text(widget.l10n.retry),
                ),
              ],
            ),
          );
        }

        if (state.characters.isEmpty && !state.loading) {
          return Center(child: Text(widget.l10n.noCharactersFound));
        }

        return RefreshIndicator.adaptive(
          onRefresh: () {
            context.read<CharactersBloc>().add(const RefreshCharactersEvent());
            return context.read<CharactersBloc>().stream.firstWhere(
              (state) => !state.loading,
            );
          },
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: _scrollController,
            itemCount: state.characters.length + (state.loadingMore ? 1 : 0),
            padding:
                const EdgeInsets.all(4) + const EdgeInsets.only(bottom: 64),

            itemBuilder: (context, index) {
              if (index == state.characters.length) {
                return const Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(child: CircularProgressIndicator()),
                );
              }

              final character = state.characters[index];
              return Padding(
                padding: const EdgeInsets.all(4),
                child: ListTile(
                  splashColor: Theme.of(
                    context,
                  ).colorScheme.primary.withAlpha(25),
                  tileColor: Theme.of(context).colorScheme.surfaceContainer,
                  leading: Hero(
                    tag: 'character-avatar-${character.id}',
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        image: character.imageUrl,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),
                  title: Text(character.displayName),
                  subtitle: Text(
                    '${character.displayRace} - ${character.displayAffiliation}',
                  ),
                  onTap: () {
                    context.pushNamed(
                      'character-details',
                      pathParameters: {'id': '${character.id}'},
                    );
                  },
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

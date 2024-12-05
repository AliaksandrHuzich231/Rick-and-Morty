part of 'character_list_screen.dart';

class _CharacterListForm extends StatefulWidget {
  const _CharacterListForm();

  @override
  State<_CharacterListForm> createState() => _CharacterListFormState();
}

class _CharacterListFormState extends State<_CharacterListForm> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      final double boundaryOffset =
          context.read<CharacterListBloc>().state.boundaryOffset;
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent * boundaryOffset &&
          !context.read<CharacterListBloc>().state.isLoadingItems) {
        context.read<CharacterListBloc>().add(LoadCharacters());
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final CharacterListBloc bloc = context.read<CharacterListBloc>();

    return BlocConsumer<CharacterListBloc, CharacterListState>(
      listenWhen: (
        CharacterListState prevState,
        CharacterListState currentState,
      ) {
        return (prevState.hasConnection != currentState.hasConnection) &&
            (prevState.hasConnection != null ||
                !(currentState.hasConnection ?? false));
      },
      listener: (BuildContext context, CharacterListState state) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              (state.hasConnection ?? true)
                  ? 'character_list.you_are_online'.watchTr(context)
                  : 'character_list.no_connection'.watchTr(context),
            ),
          ),
        );
      },
      builder: (_, CharacterListState state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state.hasError) {
          return CharactersListRetry(
            onRetry: () => bloc.add(InitialLoad()),
            message: 'character_list.something_went_wrong'.watchTr(context),
          );
        } else if (state.characters.isEmpty) {
          return CharactersListRetry(
            onRetry: () => bloc.add(InitialLoad()),
            message: 'character_list.no data'.watchTr(context),
          );
        } else {
          return ListView.separated(
            controller: _scrollController,
            itemBuilder: (_, int index) {
              return CharacterTile(
                onTap: () {
                  bloc.add(
                    MoveToDetailsPage(
                      character: state.characters[index],
                    ),
                  );
                },
                character: state.characters[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 8);
            },
            itemCount: state.characters.length,
          );
        }
      },
    );
  }
}

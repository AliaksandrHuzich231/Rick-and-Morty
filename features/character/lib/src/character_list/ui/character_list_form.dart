part of 'character_list_screen.dart';

class _CharacterListForm extends StatelessWidget {
  const _CharacterListForm();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return BlocBuilder<CharacterListBloc, CharacterListState>(
      builder: (_, CharacterListState state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'character_list.title'.watchTr(context),
            ),
          ),
          body: SafeArea(
            child: PaginatedList<Character>(
              padding: const EdgeInsets.all(20),
              shrinkWrap: true,
              loadingIndicator: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: CircularProgressIndicator(
                    color: theme.navigationBarTheme.backgroundColor,
                  ),
                ),
              ),
              items: state.characters,
              isRecentSearch: false,
              isLastPage: state.lastPaginationInfo.isLastPage,
              onLoadMore: (_) {
                context.read<CharacterListBloc>().add(
                      LoadMoreCharacters(),
                    );
              },
              builder: (Character character, _) {
                return CharacterTile(
                  onTap: () {
                    context.read<CharacterListBloc>().add(
                          MoveToDetailsPage(
                            character: character,
                          ),
                        );
                  },
                  character: character,
                );
              },
            ),
          ),
        );
      },
    );
  }
}

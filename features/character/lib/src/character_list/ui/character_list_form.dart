part of 'character_list_screen.dart';

class _CharacterListForm extends StatelessWidget {
  const _CharacterListForm();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterListBloc, CharacterListState>(
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: PaginatedList<Character>(
              padding: const EdgeInsets.all(20),
              loadingIndicator: const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
              items: state.characters,
              isRecentSearch: false,
              //TODO update this logic
              isLastPage: state.page == 43,
              onLoadMore: (_) {
                context.read<CharacterListBloc>().add(
                      LoadMoreCharacters(),
                    );
              },
              builder: (Character character, _) {
                return CharacterTile(
                  onTap: () {
                    context.read<CharacterListBloc>().add(
                          MoveToDetailsPage(),
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

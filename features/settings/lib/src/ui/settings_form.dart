part of 'settings_screen.dart';

class _SettingsForm extends StatelessWidget {
  const _SettingsForm();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (_, ThemeState state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Text(
                'settings.light_theme'.watchTr(context),
              ),
              const SizedBox(width: 8),
              Switch(
                value: state.appTheme != AppTheme.lightTheme,
                onChanged: (bool value) {
                  context.read<ThemeBloc>().add(
                        ChangeThemeEvent(
                          appTheme:
                              value ? AppTheme.darkTheme : AppTheme.lightTheme,
                        ),
                      );
                },
              ),
              const SizedBox(width: 8),
              Text(
                'settings.dark_theme'.watchTr(context),
              ),
            ],
          ),
        );
      },
    );
  }
}

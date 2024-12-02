import 'package:core/core.dart';
import 'package:navigation/navigation.dart';

part 'settings_event.dart';

part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final AppRouter _appRouter;

  SettingsBloc({
    required AppRouter appRouter,
  })  : _appRouter = appRouter,
        super(
          const SettingsState(),
        );
}

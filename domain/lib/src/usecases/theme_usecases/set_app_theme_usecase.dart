import 'package:core_ui/core_ui.dart';

import '../../../domain.dart';

final class SetAppThemeUsecase extends FutureUseCase<AppTheme, void> {
  final ThemeRepository _themeRepository;

  const SetAppThemeUsecase({
    required ThemeRepository themeRepository,
  }) : _themeRepository = themeRepository;

  @override
  Future<void> execute(AppTheme input) async {
    await _themeRepository.setAppTheme(input);
  }
}
import 'package:core_ui/core_ui.dart';

import '../../../domain.dart';
import '../base_usecase.dart';

final class FetchAppThemeUsecase extends UseCase<NoParams, AppTheme> {
  final ThemeRepository _themeRepository;

  const FetchAppThemeUsecase({
    required ThemeRepository themeRepository,
  }) : _themeRepository = themeRepository;

  @override
  AppTheme execute(NoParams payload) {
    return _themeRepository.fetchAppTheme();
  }
}

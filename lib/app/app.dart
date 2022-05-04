import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:template_app/views/splashScreen/spash_screen_view.dart';

@StackedApp(routes: [
  MaterialRoute(page: SplashScreenView, initial: true),
], dependencies: [
  LazySingleton(classType: NavigationService)
])
class AppSetup {}

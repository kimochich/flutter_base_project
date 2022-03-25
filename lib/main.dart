import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_temp_project/data/repositories/user_repository.dart';
import 'package:flutter_temp_project/di/injection/injection.dart';
import 'package:flutter_temp_project/page_routes.dart';
import 'package:flutter_temp_project/theme/styles.dart';
import 'di/module/di_module.dart';
import 'generated/l10n.dart';
import 'modules/home_page/cubit/home_page_cubit.dart';
import 'modules/home_page/ui/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Injection.inject();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: AppStyles.lightTheme,
      darkTheme: AppStyles.darkTheme,
      themeMode: ThemeMode.system,
      routes: _pageMap(),
      initialRoute: PageRoutes.home,
    );
  }

  _pageMap() {
    return <String, WidgetBuilder>{
      PageRoutes.home: (BuildContext context) {
        return BlocProvider(
          create: (_) => HomePageCubit(userRepository: getIt.get<UserRepository>()),
          child: const HomePage(),
        );
      },
    };
  }
}

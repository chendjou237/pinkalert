import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intellibra/l10n/l10n.dart';
import 'package:intellibra/src/app/intelli_blocs.dart';
import 'package:intellibra/src/configs/intellibra_theme.dart';
import 'package:intellibra/src/features/home/presentation/cubit/home_cubit.dart';
import 'package:intellibra/src/features/onboarding/thememode/cubit/theme_cubit.dart';
import 'package:intellibra/src/features/scan/presentation/cubit/scan_cubit.dart';
import 'package:intellibra/src/injection_container.dart';
import 'package:intellibra/src/router/intellibra_router.gr.dart';

class Intellibra extends StatefulWidget {
  const Intellibra({super.key});

  @override
  State<Intellibra> createState() => _IntellibraState();
}

class _IntellibraState extends State<Intellibra> {
  late IntellibraRouter router;
  @override
  void initState() {
    router = IntellibraRouter();
    super.initState();
  }

  final homeCubit = sl<HomeCubit>();
  @override
  Widget build(BuildContext context) {
    const theme = IntellibraTheme();
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: ThemeCubit(),
        ),
        BlocProvider.value(value: ScanCubit()),
        BlocProvider.value(value: homeCubit),
      ],
      child: IntelliBlocs(
        child: BlocBuilder<ThemeCubit, bool>(
          builder: (BuildContext context, bool state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              themeMode: !state == false ? ThemeMode.light : ThemeMode.dark,
              theme: theme.toThemeData(
                Brightness.light,
              ),
              darkTheme: theme.toThemeData(
                Brightness.dark,
              ),
              routeInformationParser: router.defaultRouteParser(),
              routerDelegate: router.delegate(),
              supportedLocales: AppLocalizations.supportedLocales,
            );
          },
        ),
      ),
    );
  }
}

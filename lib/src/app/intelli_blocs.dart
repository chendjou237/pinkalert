import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intellibra/src/features/onboarding/thememode/cubit/theme_cubit.dart';

class IntelliBlocs extends StatelessWidget {
  final Widget child;
  IntelliBlocs({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(),
        )
      ],
      child: child,
    );
  }
}

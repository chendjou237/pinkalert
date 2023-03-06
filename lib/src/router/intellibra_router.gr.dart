// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:intellibra/src/features/auth/presentation/signup/screens/signup.dart'
    as _i2;
import 'package:intellibra/src/features/awareness/screens/awareness.dart'
    as _i5;
import 'package:intellibra/src/features/onboarding/onboarding.dart' as _i1;
import 'package:intellibra/src/features/records/medical_records.dart' as _i6;
import 'package:intellibra/src/features/scan/home.dart' as _i3;
import 'package:intellibra/src/features/scan/self_exam.dart' as _i4;
import 'package:intellibra/src/features/settings/settings.dart' as _i7;

class IntellibraRouter extends _i8.RootStackRouter {
  IntellibraRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    Welcome.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Welcome(),
      );
    },
    CreateAccount.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreateAccount(),
      );
    },
    ChooseLanguage.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChooseLanguage(),
      );
    },
    ChooseTheme.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChooseTheme(),
      );
    },
    Home.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.Home(),
      );
    },
    SelfCheck.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.SelfCheck(),
      );
    },
    Awareness.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.Awareness(),
      );
    },
    IntelliRecords.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.IntelliRecords(),
      );
    },
    Settings.name: (routeData) {
      return _i8.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i7.Settings(),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/welcome',
          fullMatch: true,
        ),
        _i8.RouteConfig(
          Welcome.name,
          path: '/welcome',
        ),
        _i8.RouteConfig(
          CreateAccount.name,
          path: '/create-account',
        ),
        _i8.RouteConfig(
          ChooseLanguage.name,
          path: '/choose-language',
        ),
        _i8.RouteConfig(
          ChooseTheme.name,
          path: '/choose-theme',
        ),
        _i8.RouteConfig(
          Home.name,
          path: '/home',
          children: [
            _i8.RouteConfig(
              SelfCheck.name,
              path: 'self-check',
              parent: Home.name,
            ),
            _i8.RouteConfig(
              Awareness.name,
              path: 'awareness',
              parent: Home.name,
            ),
            _i8.RouteConfig(
              IntelliRecords.name,
              path: 'medical-records',
              parent: Home.name,
            ),
            _i8.RouteConfig(
              Settings.name,
              path: 'settings',
              parent: Home.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.Welcome]
class Welcome extends _i8.PageRouteInfo<void> {
  const Welcome()
      : super(
          Welcome.name,
          path: '/welcome',
        );

  static const String name = 'Welcome';
}

/// generated route for
/// [_i2.CreateAccount]
class CreateAccount extends _i8.PageRouteInfo<void> {
  const CreateAccount()
      : super(
          CreateAccount.name,
          path: '/create-account',
        );

  static const String name = 'CreateAccount';
}

/// generated route for
/// [_i1.ChooseLanguage]
class ChooseLanguage extends _i8.PageRouteInfo<void> {
  const ChooseLanguage()
      : super(
          ChooseLanguage.name,
          path: '/choose-language',
        );

  static const String name = 'ChooseLanguage';
}

/// generated route for
/// [_i1.ChooseTheme]
class ChooseTheme extends _i8.PageRouteInfo<void> {
  const ChooseTheme()
      : super(
          ChooseTheme.name,
          path: '/choose-theme',
        );

  static const String name = 'ChooseTheme';
}

/// generated route for
/// [_i3.Home]
class Home extends _i8.PageRouteInfo<void> {
  const Home({List<_i8.PageRouteInfo>? children})
      : super(
          Home.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i4.SelfCheck]
class SelfCheck extends _i8.PageRouteInfo<void> {
  const SelfCheck()
      : super(
          SelfCheck.name,
          path: 'self-check',
        );

  static const String name = 'SelfCheck';
}

/// generated route for
/// [_i5.Awareness]
class Awareness extends _i8.PageRouteInfo<void> {
  const Awareness()
      : super(
          Awareness.name,
          path: 'awareness',
        );

  static const String name = 'Awareness';
}

/// generated route for
/// [_i6.IntelliRecords]
class IntelliRecords extends _i8.PageRouteInfo<void> {
  const IntelliRecords()
      : super(
          IntelliRecords.name,
          path: 'medical-records',
        );

  static const String name = 'IntelliRecords';
}

/// generated route for
/// [_i7.Settings]
class Settings extends _i8.PageRouteInfo<void> {
  const Settings()
      : super(
          Settings.name,
          path: 'settings',
        );

  static const String name = 'Settings';
}

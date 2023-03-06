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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:intellibra/src/features/awareness/screens/awareness.dart'
    as _i4;
import 'package:intellibra/src/features/onboarding/onboarding.dart' as _i1;
import 'package:intellibra/src/features/records/medical_records.dart' as _i5;
import 'package:intellibra/src/features/scan/home.dart' as _i2;
import 'package:intellibra/src/features/scan/self_exam.dart' as _i3;

class IntellibraRouter extends _i6.RootStackRouter {
  IntellibraRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    Welcome.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Welcome(),
      );
    },
    ChooseLanguage.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChooseLanguage(),
      );
    },
    ChooseTheme.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChooseTheme(),
      );
    },
    Home.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Home(),
      );
    },
    SelfCheck.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.SelfCheck(),
      );
    },
    Awareness.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.Awareness(),
      );
    },
    IntelliRecords.name: (routeData) {
      return _i6.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.IntelliRecords(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/welcome',
          fullMatch: true,
        ),
        _i6.RouteConfig(
          Welcome.name,
          path: '/welcome',
        ),
        _i6.RouteConfig(
          ChooseLanguage.name,
          path: '/choose-language',
        ),
        _i6.RouteConfig(
          ChooseTheme.name,
          path: '/choose-theme',
        ),
        _i6.RouteConfig(
          Home.name,
          path: '/home',
          children: [
            _i6.RouteConfig(
              SelfCheck.name,
              path: 'self-check',
              parent: Home.name,
            ),
            _i6.RouteConfig(
              Awareness.name,
              path: 'awareness',
              parent: Home.name,
            ),
            _i6.RouteConfig(
              IntelliRecords.name,
              path: 'medical-records',
              parent: Home.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.Welcome]
class Welcome extends _i6.PageRouteInfo<void> {
  const Welcome()
      : super(
          Welcome.name,
          path: '/welcome',
        );

  static const String name = 'Welcome';
}

/// generated route for
/// [_i1.ChooseLanguage]
class ChooseLanguage extends _i6.PageRouteInfo<void> {
  const ChooseLanguage()
      : super(
          ChooseLanguage.name,
          path: '/choose-language',
        );

  static const String name = 'ChooseLanguage';
}

/// generated route for
/// [_i1.ChooseTheme]
class ChooseTheme extends _i6.PageRouteInfo<void> {
  const ChooseTheme()
      : super(
          ChooseTheme.name,
          path: '/choose-theme',
        );

  static const String name = 'ChooseTheme';
}

/// generated route for
/// [_i2.Home]
class Home extends _i6.PageRouteInfo<void> {
  const Home({List<_i6.PageRouteInfo>? children})
      : super(
          Home.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i3.SelfCheck]
class SelfCheck extends _i6.PageRouteInfo<void> {
  const SelfCheck()
      : super(
          SelfCheck.name,
          path: 'self-check',
        );

  static const String name = 'SelfCheck';
}

/// generated route for
/// [_i4.Awareness]
class Awareness extends _i6.PageRouteInfo<void> {
  const Awareness()
      : super(
          Awareness.name,
          path: 'awareness',
        );

  static const String name = 'Awareness';
}

/// generated route for
/// [_i5.IntelliRecords]
class IntelliRecords extends _i6.PageRouteInfo<void> {
  const IntelliRecords()
      : super(
          IntelliRecords.name,
          path: 'medical-records',
        );

  static const String name = 'IntelliRecords';
}

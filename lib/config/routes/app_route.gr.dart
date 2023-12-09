// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i29;
import 'package:flutter/material.dart' as _i30;
import 'package:shopgo/maps/components/rider_info.dart' as _i23;
import 'package:shopgo/maps/order_traking_page%20copy.dart' as _i16;
import 'package:shopgo/maps/order_traking_page.dart' as _i15;
import 'package:shopgo/src/location/location.dart' as _i7;
import 'package:shopgo/src/map/map.dart' as _i12;
import 'package:shopgo/src/map/maps.dart' as _i13;
import 'package:shopgo/src/payments/stripe/payments.dart' as _i17;
import 'package:shopgo/src/privacy_page.dart' as _i19;
import 'package:shopgo/src/screens/404/screen_404_.dart' as _i24;
import 'package:shopgo/src/screens/auth/login.dart' as _i11;
import 'package:shopgo/src/screens/auth/register.dart' as _i21;
import 'package:shopgo/src/screens/auth/resert_password.dart' as _i22;
import 'package:shopgo/src/screens/home/components/detail_populars_screen.dart'
    as _i4;
import 'package:shopgo/src/screens/home/components/form/form_screen.dart'
    as _i28;
import 'package:shopgo/src/screens/home/components/packages/form_entregar_paquetes.dart'
    as _i5;
import 'package:shopgo/src/screens/home/components/packages/form_recibir_paquetes.dart'
    as _i6;
import 'package:shopgo/src/screens/home/components/search_bar.dart' as _i25;
import 'package:shopgo/src/screens/home/components/service_detail_screen.dart'
    as _i26;
import 'package:shopgo/src/screens/home/home_biker/home_biker_screen.dart'
    as _i8;
import 'package:shopgo/src/screens/home/home_biker/services_list.dart' as _i9;
import 'package:shopgo/src/screens/home/home_biker/services_list_ep.dart'
    as _i2;
import 'package:shopgo/src/screens/home/home_biker/services_list_realizados.dart'
    as _i3;
import 'package:shopgo/src/screens/home/home_customer/card_services.dart'
    as _i1;
import 'package:shopgo/src/screens/home/home_customer/home_customer_screen.dart'
    as _i10;
import 'package:shopgo/src/screens/home/home_customer/pedidos_customer_screen.dart'
    as _i18;
import 'package:shopgo/src/screens/onboarding/onboarding_screen_.dart' as _i14;
import 'package:shopgo/src/screens/splash/splash_screen_.dart' as _i27;
import 'package:shopgo/src/screens/users/profile_screen.dart' as _i20;

abstract class $AppRouter extends _i29.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i29.PageFactory> pagesMap = {
    CardServicesCustomer.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CardServicesCustomer(),
      );
    },
    CardServicesEPBiker.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CardServicesEPBiker(),
      );
    },
    CardServicesFinalizadoBiker.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CardServicesFinalizadoBiker(),
      );
    },
    DetailPolularsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailPolularsRouteArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.DetailPolularsScreen(
          args.category,
          args.description,
          args.imageUrl,
          key: args.key,
        ),
      );
    },
    FormDeliverPackage.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.FormDeliverPackage(),
      );
    },
    FormReceivePackage.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.FormReceivePackage(),
      );
    },
    GeolocatorWidget.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.GeolocatorWidget(),
      );
    },
    HomeBikerRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.HomeBikerScreen(),
      );
    },
    HomeBikerRouteServices.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.HomeBikerScreenServices(),
      );
    },
    HomeCustomerRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.HomeCustomerScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.LoginPage(),
      );
    },
    MapApp.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.MapApp(),
      );
    },
    MapsGeolocator.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.MapsGeolocator(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.OnboardingScreen(),
      );
    },
    OrderTrackingRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.OrderTrackingPage(),
      );
    },
    OrderTrackingRouteCopy.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.OrderTrackingPageCopy(),
      );
    },
    Payments.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.Payments(),
      );
    },
    PedidosCustomerRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.PedidosCustomerScreen(),
      );
    },
    PrivacyRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.PrivacyPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.ProfileScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.RegisterScreen(),
      );
    },
    ResetRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.ResetPage(),
      );
    },
    RiderInfo.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.RiderInfo(),
      );
    },
    Route404.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.Screen404(),
      );
    },
    SearchBar_.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.SearchBar_(),
      );
    },
    Shoes.name: (routeData) {
      final args = routeData.argsAs<ShoesArgs>();
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i26.Shoes(
          key: args.key,
          image: args.image,
          tag: args.tag,
        ),
      );
    },
    SplashRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i27.SplashScreen(),
      );
    },
    TextFormFieldRoute.name: (routeData) {
      return _i29.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i28.TextFormFieldScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CardServicesCustomer]
class CardServicesCustomer extends _i29.PageRouteInfo<void> {
  const CardServicesCustomer({List<_i29.PageRouteInfo>? children})
      : super(
          CardServicesCustomer.name,
          initialChildren: children,
        );

  static const String name = 'CardServicesCustomer';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CardServicesEPBiker]
class CardServicesEPBiker extends _i29.PageRouteInfo<void> {
  const CardServicesEPBiker({List<_i29.PageRouteInfo>? children})
      : super(
          CardServicesEPBiker.name,
          initialChildren: children,
        );

  static const String name = 'CardServicesEPBiker';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CardServicesFinalizadoBiker]
class CardServicesFinalizadoBiker extends _i29.PageRouteInfo<void> {
  const CardServicesFinalizadoBiker({List<_i29.PageRouteInfo>? children})
      : super(
          CardServicesFinalizadoBiker.name,
          initialChildren: children,
        );

  static const String name = 'CardServicesFinalizadoBiker';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DetailPolularsScreen]
class DetailPolularsRoute extends _i29.PageRouteInfo<DetailPolularsRouteArgs> {
  DetailPolularsRoute({
    required String category,
    required String description,
    required String imageUrl,
    _i30.Key? key,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          DetailPolularsRoute.name,
          args: DetailPolularsRouteArgs(
            category: category,
            description: description,
            imageUrl: imageUrl,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailPolularsRoute';

  static const _i29.PageInfo<DetailPolularsRouteArgs> page =
      _i29.PageInfo<DetailPolularsRouteArgs>(name);
}

class DetailPolularsRouteArgs {
  const DetailPolularsRouteArgs({
    required this.category,
    required this.description,
    required this.imageUrl,
    this.key,
  });

  final String category;

  final String description;

  final String imageUrl;

  final _i30.Key? key;

  @override
  String toString() {
    return 'DetailPolularsRouteArgs{category: $category, description: $description, imageUrl: $imageUrl, key: $key}';
  }
}

/// generated route for
/// [_i5.FormDeliverPackage]
class FormDeliverPackage extends _i29.PageRouteInfo<void> {
  const FormDeliverPackage({List<_i29.PageRouteInfo>? children})
      : super(
          FormDeliverPackage.name,
          initialChildren: children,
        );

  static const String name = 'FormDeliverPackage';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i6.FormReceivePackage]
class FormReceivePackage extends _i29.PageRouteInfo<void> {
  const FormReceivePackage({List<_i29.PageRouteInfo>? children})
      : super(
          FormReceivePackage.name,
          initialChildren: children,
        );

  static const String name = 'FormReceivePackage';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i7.GeolocatorWidget]
class GeolocatorWidget extends _i29.PageRouteInfo<void> {
  const GeolocatorWidget({List<_i29.PageRouteInfo>? children})
      : super(
          GeolocatorWidget.name,
          initialChildren: children,
        );

  static const String name = 'GeolocatorWidget';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i8.HomeBikerScreen]
class HomeBikerRoute extends _i29.PageRouteInfo<void> {
  const HomeBikerRoute({List<_i29.PageRouteInfo>? children})
      : super(
          HomeBikerRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeBikerRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i9.HomeBikerScreenServices]
class HomeBikerRouteServices extends _i29.PageRouteInfo<void> {
  const HomeBikerRouteServices({List<_i29.PageRouteInfo>? children})
      : super(
          HomeBikerRouteServices.name,
          initialChildren: children,
        );

  static const String name = 'HomeBikerRouteServices';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i10.HomeCustomerScreen]
class HomeCustomerRoute extends _i29.PageRouteInfo<void> {
  const HomeCustomerRoute({List<_i29.PageRouteInfo>? children})
      : super(
          HomeCustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeCustomerRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i11.LoginPage]
class LoginRoute extends _i29.PageRouteInfo<void> {
  const LoginRoute({List<_i29.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i12.MapApp]
class MapApp extends _i29.PageRouteInfo<void> {
  const MapApp({List<_i29.PageRouteInfo>? children})
      : super(
          MapApp.name,
          initialChildren: children,
        );

  static const String name = 'MapApp';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i13.MapsGeolocator]
class MapsGeolocator extends _i29.PageRouteInfo<void> {
  const MapsGeolocator({List<_i29.PageRouteInfo>? children})
      : super(
          MapsGeolocator.name,
          initialChildren: children,
        );

  static const String name = 'MapsGeolocator';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i14.OnboardingScreen]
class OnboardingRoute extends _i29.PageRouteInfo<void> {
  const OnboardingRoute({List<_i29.PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i15.OrderTrackingPage]
class OrderTrackingRoute extends _i29.PageRouteInfo<void> {
  const OrderTrackingRoute({List<_i29.PageRouteInfo>? children})
      : super(
          OrderTrackingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderTrackingRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i16.OrderTrackingPageCopy]
class OrderTrackingRouteCopy extends _i29.PageRouteInfo<void> {
  const OrderTrackingRouteCopy({List<_i29.PageRouteInfo>? children})
      : super(
          OrderTrackingRouteCopy.name,
          initialChildren: children,
        );

  static const String name = 'OrderTrackingRouteCopy';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i17.Payments]
class Payments extends _i29.PageRouteInfo<void> {
  const Payments({List<_i29.PageRouteInfo>? children})
      : super(
          Payments.name,
          initialChildren: children,
        );

  static const String name = 'Payments';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i18.PedidosCustomerScreen]
class PedidosCustomerRoute extends _i29.PageRouteInfo<void> {
  const PedidosCustomerRoute({List<_i29.PageRouteInfo>? children})
      : super(
          PedidosCustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'PedidosCustomerRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i19.PrivacyPage]
class PrivacyRoute extends _i29.PageRouteInfo<void> {
  const PrivacyRoute({List<_i29.PageRouteInfo>? children})
      : super(
          PrivacyRoute.name,
          initialChildren: children,
        );

  static const String name = 'PrivacyRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i20.ProfileScreen]
class ProfileRoute extends _i29.PageRouteInfo<void> {
  const ProfileRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i21.RegisterScreen]
class RegisterRoute extends _i29.PageRouteInfo<void> {
  const RegisterRoute({List<_i29.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i22.ResetPage]
class ResetRoute extends _i29.PageRouteInfo<void> {
  const ResetRoute({List<_i29.PageRouteInfo>? children})
      : super(
          ResetRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i23.RiderInfo]
class RiderInfo extends _i29.PageRouteInfo<void> {
  const RiderInfo({List<_i29.PageRouteInfo>? children})
      : super(
          RiderInfo.name,
          initialChildren: children,
        );

  static const String name = 'RiderInfo';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i24.Screen404]
class Route404 extends _i29.PageRouteInfo<void> {
  const Route404({List<_i29.PageRouteInfo>? children})
      : super(
          Route404.name,
          initialChildren: children,
        );

  static const String name = 'Route404';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i25.SearchBar_]
class SearchBar_ extends _i29.PageRouteInfo<void> {
  const SearchBar_({List<_i29.PageRouteInfo>? children})
      : super(
          SearchBar_.name,
          initialChildren: children,
        );

  static const String name = 'SearchBar_';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i26.Shoes]
class Shoes extends _i29.PageRouteInfo<ShoesArgs> {
  Shoes({
    _i30.Key? key,
    required String image,
    required String tag,
    List<_i29.PageRouteInfo>? children,
  }) : super(
          Shoes.name,
          args: ShoesArgs(
            key: key,
            image: image,
            tag: tag,
          ),
          initialChildren: children,
        );

  static const String name = 'Shoes';

  static const _i29.PageInfo<ShoesArgs> page = _i29.PageInfo<ShoesArgs>(name);
}

class ShoesArgs {
  const ShoesArgs({
    this.key,
    required this.image,
    required this.tag,
  });

  final _i30.Key? key;

  final String image;

  final String tag;

  @override
  String toString() {
    return 'ShoesArgs{key: $key, image: $image, tag: $tag}';
  }
}

/// generated route for
/// [_i27.SplashScreen]
class SplashRoute extends _i29.PageRouteInfo<void> {
  const SplashRoute({List<_i29.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

/// generated route for
/// [_i28.TextFormFieldScreen]
class TextFormFieldRoute extends _i29.PageRouteInfo<void> {
  const TextFormFieldRoute({List<_i29.PageRouteInfo>? children})
      : super(
          TextFormFieldRoute.name,
          initialChildren: children,
        );

  static const String name = 'TextFormFieldRoute';

  static const _i29.PageInfo<void> page = _i29.PageInfo<void>(name);
}

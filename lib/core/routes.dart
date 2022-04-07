import 'package:flutter/material.dart';
import 'package:infraero_app/view/airport/edit_airport_view.dart';
import '../view/airport/add_airport_view.dart';
import '../view/airport/airports_view.dart';
import '../view/company/add_company_view.dart';
import '../view/company/edit_company_view.dart';
import '../view/flight/add_flight_view.dart';
import '../view/flight/edit_flight_view.dart';
import '../view/home_view.dart';

class Routes {
  factory Routes() {
    return _instance;
  }

  static final Routes _instance = Routes._instance;
  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    '/': (_) => const HomeView(),
    '/airports': (_) => const AirpoirtsView(),
    '/add_airport': (_) => const AddAirportView(),
    '/edit_airport': (_) => const EditAirportView(),
    'add_flight': (_) => const AddFlightView(),
    '/edit_flight': (_) => const EditFlightView(),
    '/edit_company': (_) => const EditCompanytView(),
    '/add_company': (_) => const AddCompanyView(),
  };
}

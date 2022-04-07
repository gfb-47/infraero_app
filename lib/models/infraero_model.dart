import 'package:infraero_app/models/airport_model.dart';
import 'package:infraero_app/models/company_model.dart';

class Infraero {
  Set<Company> companies;
  Set<Airport> airports;

  Infraero({
    required this.companies,
    required this.airports,
  });

  @override
  String toString() => 'Infraero(companies: $companies, airports: $airports)';
}

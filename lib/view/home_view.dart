import 'package:flutter/material.dart';
import 'package:infraero_app/view/company/companies_view.dart';

import '../../view/airport/add_airport_view.dart';
import '../../view/airport/airports_view.dart';
import '../../view/flight/flights_view.dart';
import '../../view/home_view.dart';
import 'flight/add_flight_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Infraero'),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
                onPressed: () => _getAddScreen(_selectedIndex),
                icon: Icon(Icons.add))
          ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.airplanemode_active_rounded),
              selected: 0 == _selectedIndex,
              title: const Text('Airports'),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.airplane_ticket),
              selected: 1 == _selectedIndex,
              title: Text('Flights'),
              onTap: () {
                _onSelectItem(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.corporate_fare),
              title: Text('Companies'),
              selected: 2 == _selectedIndex,
              onTap: () {
                _onSelectItem(2);
              },
            ),
          ],
        ),
      ),
      body: _getDrawerItem(_selectedIndex),
    );
  }

  Widget _getDrawerItem(int choice) {
    switch (choice) {
      case 0:
        return const AirpoirtsView();
      case 1:
        return const FlightsView();
      case 2:
        return const CompaniesView();
      default:
        return const HomeView();
    }
  }

  _getAddScreen(int choice) {
    switch (choice) {
      case 0:
        return Navigator.pushNamed(context, '/add_airport');
      case 1:
        return Navigator.pushNamed(context, '/add_flight');
      case 2:
        return Navigator.pushNamed(context, '/add_company');
      default:
        return Navigator.pushNamed(context, '/add_airport');
    }
  }

  void _onSelectItem(int index) {
    setState(() => _selectedIndex = index);
    Navigator.of(context).pop();
  }
}

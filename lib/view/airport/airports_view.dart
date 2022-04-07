import 'package:flutter/material.dart';
import 'package:infraero_app/components/widgets/infra_card.dart';

class AirpoirtsView extends StatelessWidget {
  const AirpoirtsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 10,
      itemBuilder: (_, int index) {
        return InfraCard(
            text: 'Airport ${index.toString()}',
            imageUrl:
                'https://media.istockphoto.com/photos/bird-eye-view-of-airport-terminal-with-parked-airplanes-picture-id1316256375?b=1&k=20&m=1316256375&s=170667a&w=0&h=LtQOcvT47CQhWX8Y-db0dMClonYcFwsuuvs8Vnb-BZA=',
            subtitle: '',
            onPressed: () => Navigator.pushNamed(context, '/edit_airport'));
      },
    ));
  }
}

import 'package:flutter/material.dart';

import '../../components/widgets/infra_card.dart';

class FlightsView extends StatelessWidget {
  const FlightsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 10,
      itemBuilder: (_, int index) {
        return InfraCard(
            text: 'Flight ${index.toString()}',
            imageUrl:
                'https://solarsistemas.com.br/wp-content/uploads/2019/06/ticket.jpg',
            subtitle: '',
            onPressed: () => Navigator.pushNamed(context, '/edit_flight'));
      },
    ));
  }
}

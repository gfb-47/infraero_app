import 'package:flutter/material.dart';
import 'package:infraero_app/components/widgets/infra_card.dart';

class CompaniesView extends StatelessWidget {
  const CompaniesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 10,
      itemBuilder: (_, int index) {
        return InfraCard(
            text: 'Company ${index.toString()}',
            imageUrl:
                'https://aeromagazine.uol.com.br/media/versions/gol-carbono-zero2_free_big.jpg',
            subtitle: '',
            onPressed: () => Navigator.pushNamed(context, '/edit_company'));
      },
    ));
  }
}
